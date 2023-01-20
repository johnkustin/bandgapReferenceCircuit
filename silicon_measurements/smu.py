import logging, serial, time, numbers


class SMU:
    def __init__(self, port, baud, terminator='\r', logger=None, encoding='utf-8', parity=serial.PARITY_NONE,
                 stopbits=serial.STOPBITS_ONE,
                 bytesize=serial.EIGHTBITS,
                 xonxoff=True,
                 timeout=3,
                 rtscts=False,
                 dsrdtr=False):

        if logger is None:
            self.log = logging.getLogger(__name__ + '.serial')
            formatter = logging.Formatter('%(asctime)s,%(msecs)d %(name)s %(levelname)s %(message)s')
            self.log.setLevel(logging.DEBUG)

            stream_handler = logging.StreamHandler()
            stream_handler.setLevel(logging.INFO)
            stream_handler.setFormatter(formatter)

            logname = f'smu.serial.{time.asctime()}.log'
            file_handler = logging.FileHandler(logname)
            file_handler.setFormatter(formatter)
            file_handler.setLevel(logging.DEBUG)

            self.log.addHandler(stream_handler)
            self.log.addHandler(file_handler)
        else:
            self.log = logger

        self.port = port
        self.baud = baud
        self.encoding = encoding
        self.parity = parity
        self.stopbits = stopbits
        self.bytesize = bytesize
        self.xonxoff = xonxoff
        self.timeout = timeout
        self.rtscts = rtscts
        self.dsrdtr = dsrdtr
        self.terminator = terminator
        self.sense_mode = None
        self.source_mode = None

        self._con = serial.Serial(port, baudrate=baud, parity=parity,
                                  stopbits=stopbits,
                                  bytesize=bytesize,
                                  xonxoff=xonxoff,
                                  timeout=timeout,
                                  rtscts=rtscts,
                                  dsrdtr=dsrdtr)
        if not self._con.is_open:
            self._con.open()
            if not self._con.is_open: self.log.error(f'Could not open connection to {port}')

    def __del__(self):
        self._con.close()

    def write(self, msg=None):
        if msg is not None:
            _msg = msg + self.terminator
            self.log.debug(msg=f'Writing {_msg}')
            length = self._con.write(_msg.encode())
            if length != len(_msg):
                self.log.error(msg=f'Wrote {length} out of {len(_msg)} bytes of message: "{_msg}"')
            return length
        else:
            self.log.warning(msg=f'Could not write message because it is of {type(msg)}')
            return None


    def read(self, write=None, length=None):
        if write is not None:
            self.write(write)

        if length is not None:
            rsp = self._con.read(length)
        else:
            if self.terminator is None:
                raise RuntimeError("Length must be supplied if terminator is None!")
            rsp = self._con.read_until(self.terminator)

        self.log.info(f"recv: {rsp}")

        if self.encoding is not None:
            rsp = rsp.decode(self.encoding)
            rsp = rsp.strip()

        return rsp

    def id(self):
        return self.read(write='*IDN?')

    def _prep_mode(self, mode: str):
        _mode = mode.upper()
        modes = ["CURR", "CURRENT", "VOLT", "VOLTAGE"]
        if not _mode in modes:
            self.log.error(msg=f'Incompatible source type of {mode}')
        return _mode

    def set_source_mode(self, mode="CURR"):
        _mode = self._prep_mode(mode)
        msg = f':SOUR:FUNC {_mode}'
        if self.write(msg):
            self.source_mode = _mode

    def set_sense_mode(self, mode="VOLT"):
        _mode = self._prep_mode(mode)
        msg = f':SENS:FUNC {_mode}'
        if self.write(msg):
            self.sense_mode = _mode

    def _write_source_lev(self, msg):
        if not (self.source_mode is None):
            _msg = f':SOUR:{self.source_mode}:LEV {msg:.3e}'
            self.log.debug(_msg)
            return self.write(_msg)
        else:
            self.log.warning(msg='Source Mode is None')
            return None

    def set_source_lev(self, level=0.0):
        if level is None:
            self.log.warning(msg='Need to define a level')
        elif not isinstance(level, numbers.Number):
            self.log.warning(msg=f'Level of {level} is not a number')
        return self._write_source_lev(level)

    def read_data(self):
        return self.read(write=":READ?")

    def enable_output(self):
        return self.write(":OUTP ON")

    def disable_output(self):
        return self.write(":OUTP OFF")


def main():
    port = '/dev/cu.usbserial-A6004uWR'
    baud = 57600
    smu = SMU(port, baud, encoding='utf-8')
    print(smu.id())
    smu.set_sense_mode("VOLT")
    smu.set_source_mode("CURR")
    for iLoad in [0, -100E-9, -200E-9, -300E-9]:
        smu.set_source_lev(iLoad)
        smu.read_data()
    smu.set_source_lev(0)

if __name__ == "__main__":
    main()
