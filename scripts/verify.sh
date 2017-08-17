#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'No arguments provided'
    echo 'Provide: '
    echo '	uppaal_model.xml'
    exit 1
fi

exec monitor/uppaal_models/verification/verify_all_properties.sh "../monitor/uppaal_models/$1"

cp ../monitor/uppaal_models/reward_13_v1.xml ../monitor/uppaal_models/verification

bash ../monitor/verification/verify_all_properties.sh ../monitor/uppaal_models/reward_13_v1.xml