#!/bin/bash

# default is to make changes to theme files directly
keep=0

# check options
if [[ $1 == "-k" || $1 == "--keep-originals" ]];then
    keep=1
elif [[ $1 == "-h" || $1 == "--help" ]];then
    echo "Usage: fix-dashes.sh [option]"
    echo "  -k, --keep-originals    keep original files in ./themes/, output to ./themes_fixed/"
    echo "  -h, --help              show this message"
    exit 0
fi

# create dir for new files if keep option was used
if [[ keep -eq 1 ]];then
    mkdir -p themes_fixed
fi

# process all original base16 files in themes/
for filepath in themes/base16-*.vim; do
    filename=$(basename "$filepath")
    dashed_name=${filename%.vim}
    underscored_name=${dashed_name//-/_}

    if [[ $keep -eq 1 ]];then
        # change base16 names inside file to use underscores instead of a dashes, save results to
        # correctly named file in themes_fixed/
        sed s/${dashed_name}/${underscored_name}/g $filepath > themes_fixed/${underscored_name}.vim
        echo "$dashed_name -> $underscored_name, original kept, created themes_fixed/${underscored_name}.vim"
    else
        # change base16 names inside file to use underscores instead of a dashes, save results to
        # correctly named file in themes/
        sed s/${dashed_name}/${underscored_name}/g $filepath > themes/${underscored_name}.vim
        # remove original file in themes/
        rm $filepath
        echo "$dashed_name -> $underscored_name, deleted original, created themes/${underscored_name}.vim"
    fi
done

