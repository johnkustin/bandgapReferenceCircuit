//#include "../defs.h"
#include "../defs_mpw-two-mfix.h"

// --------------------------------------------------------
// Firmware routines
// --------------------------------------------------------

void main()
{
	int i, j;

	i = 1;

    reg_mprj_io_0  = 0x1c03;
    reg_mprj_io_1  = 0x1c01;
    reg_mprj_io_2  = 0x0900;
    reg_mprj_io_3  = 0x0480;
    reg_mprj_io_4  = 0x0240;
    reg_mprj_io_5  = 0x0420;
    reg_mprj_io_6  = 0x00e0;
    reg_mprj_io_7  = 0x0108;
    reg_mprj_io_8  = 0x0038;
    reg_mprj_io_9  = 0x0042;
    reg_mprj_io_10 = 0x002c;
    reg_mprj_io_11 = 0x1014;
    reg_mprj_io_12 = 0x0403;
    reg_mprj_io_13 = 0x1c04;
    reg_mprj_io_14 = 0x0100;
    reg_mprj_io_15 = 0x0701;
    reg_mprj_io_16 = 0x0840;
    reg_mprj_io_17 = 0x00c0;
    reg_mprj_io_18 = 0x0000;

//    reg_mprj_io_12 = GPIO_MODE_USER_STD_ANALOG;
//    reg_mprj_io_11 = GPIO_MODE_USER_STD_ANALOG;


    reg_mprj_datal = 0;
    reg_mprj_datah = 0;

    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

	// Enable GPIO (all output, ena = 0)
	reg_gpio_ena = 0x0;
	reg_gpio_pu = 0x0;
	reg_gpio_pd = 0x0;
	reg_gpio_data = 0x1;

	while(1) {
        reg_gpio_data = 0x0;
        for (j = 0; j < 3000; j++);

        reg_gpio_data = 0x1;
        for (j = 0; j < 3000; j++);
	}

}

