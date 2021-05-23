#!/bin/bash
args=("$@")
nargs="$#"
ckttype="${args[0]}"
corner="${args[1]}"
mcenable="${args[2]}"
echo "cd into $ckttype/"
cd "../$ckttype"
echo "edit spice file to rename models"
./editflatspice.sh
echo "cd into sims/"
cd ../sims
if [[ "$nargs" -ne 3 ]]; then
    echo "need exactly 3 parameters."
    echo "usage: ./make-tb.sh ckt-type process-corner mc-enable"
    echo "ex: ./make-tb.sh lvs tt 0"
    exit 1
fi
echo "combining spice files"
echo "cat ../${ckttype}/bandgaptop_flat.spice templates/lib_${corner}.spice templates/tbtran_mm_${mcenable}.spice > sim_top_${ckttype}_${corner}_mm_${mcenable}.spice"
cat "../${ckttype}/bandgaptop_flat.spice" "templates/lib_${corner}.spice" "templates/tbtran_mm_${mcenable}.spice" > "sim_top_${ckttype}_${corner}_mm_${mcenable}.spice"
sed -i "s/TESTTYPENAMEHERE/tbtran_${corner}_mm_${mcenable}/g" "sim_top_${ckttype}_${corner}_mm_$mcenable.spice"
