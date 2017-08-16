#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'No arguments provided'
    echo 'Provide: '
    echo '	uppaal_model.xml'
    exit 1
fi

exec ../monitor/verification/verify_all_properties.sh ../monitor/uppaal_models/$1
