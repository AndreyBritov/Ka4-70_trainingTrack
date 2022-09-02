#!/bin/bash
# Source tutorial run functions
iter=1
startTime=3.45

for ((i=1; i<=$iter; i++))
do
    echo "ITERATION = $i"
    python3 Consolidation.py
    mono BedLoadTaskNew.dll 0.5 5 ImportData.txt ExportData.txt BLParams.txt
    mv ImportData.txt ImportDataDefault.txt
    python3 Diversity.py
    cp -f pointDisplacementz  ../constant/boundaryData/down/$startTime
    

done

rm -rf faces points p wallShearStress faceCentres pointDisplacementz vectorField scalarField

