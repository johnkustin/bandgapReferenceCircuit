extract all
ext2spice lvs
set filename "$cellname"
set spicefilename [lindex [split $filename .] 0]
ext2spice -d -o "../lvs/$spicefilename.spice"