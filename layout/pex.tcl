# extract do local
extract all
# ext2sim labels on
ext2sim 
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0.01
ext2spice extresist on
set filename [cellname list window]
set spicefilename [lindex [split $filename .] 0]
ext2spice -d -F -o "../pex/$spicefilename.spice"