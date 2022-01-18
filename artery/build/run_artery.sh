#!/bin/bash
OPP_RUNALL=/home/dazhou/Desktop/omnetpp-5.6.2/bin/opp_runall
OPP_RUN=/home/dazhou/Desktop/omnetpp-5.6.2/bin/opp_run_dbg
NED_FOLDERS="/home/dazhou/Desktop/artery/src/artery:/home/dazhou/Desktop/artery/src/traci:/home/dazhou/Desktop/artery/extern/veins/examples/veins:/home/dazhou/Desktop/artery/extern/veins/src/veins:/home/dazhou/Desktop/artery/extern/inet/src:/home/dazhou/Desktop/artery/extern/inet/examples:/home/dazhou/Desktop/artery/extern/inet/tutorials:/home/dazhou/Desktop/artery/extern/inet/showcases"
LIBRARIES="-l/home/dazhou/Desktop/artery/build/src/artery/libartery_core.so -l/home/dazhou/Desktop/artery/build/src/traci/libtraci.so -l/home/dazhou/Desktop/artery/build/extern/libveins.so -l/home/dazhou/Desktop/artery/build/extern/libINET.so -l/home/dazhou/Desktop/artery/build/src/artery/storyboard/libartery_storyboard.so -l/home/dazhou/Desktop/artery/build/src/artery/envmod/libartery_envmod.so"

RUNALL=false
for arg do
    shift
    [[ "$arg" == -j* ]] && RUNALL=true && J=$arg && continue
    [[ "$arg" == -b* ]] && RUNALL=true && B=$arg && continue
    # run opp_runall with default values for -j* and -b* options by just specifying '--all'
    [[ "$arg" == "--all" ]] && RUNALL=true && continue
    set -- "$@" "$arg"
done

if [ "$RUNALL" = true ] ; then
    $OPP_RUNALL $J $B $OPP_RUN -n $NED_FOLDERS $LIBRARIES $@
else
    $OPP_RUN -n $NED_FOLDERS $LIBRARIES $@
fi
