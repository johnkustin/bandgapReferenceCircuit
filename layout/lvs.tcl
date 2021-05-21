extract all
ext2spice lvs
set filename [cellname list window]
set spicefilename [lindex [split $filename .] 0]
ext2spice -B -d -o "../lvs/$spicefilename.spice"