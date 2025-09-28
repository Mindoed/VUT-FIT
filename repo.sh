#!/bin/bash


repo_name=$3
sem=$4
submodule_name="$sem-$repo_name"

# repo.sh - Simple script to add/remove git submodules
if [[ "$1" == "add" && "$2" == "submodule" && -n "$repo_name" && -n "$sem" ]]; then
    echo "Creating submodule '$submodule_name'" 
    
    git submodule add git@github.com:Mindoed/"$repo_name".git "$sem"-"$repo_name"
    git add .gitmodules "$submodule_name"
    
elif [[ "$1" == "remove" && "$2" == "submodule" && -n "$repo_name" && -n "$sem" ]]; then
    echo "
Note: 
  The submodule '$submodule_name' cannot be removed if it is comitted.
  Fix is planned, but it you have to remove it manually for now.
  Other issues may occur.
    "
    echo -n "Are you sure you want to remove the submodule '$submodule_name'? [y/n]
"
    read -n 1 confirm
    echo
    if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
        echo "Aborted."
        exit 0
    fi
    i=1
    cnt=3

    echo "
[$i/$cnt] Removing submodule entry from .gitmodules."
    git config -f .gitmodules --remove-section submodule."$submodule_name" 2>/dev/null
    i=$((i + 1))


    echo "[$i/$cnt] Removing submodule entry from .git/config."
    git config --remove-section submodule."$submodule_name" 2>/dev/null
    i=$((i + 1))
    
    echo "[$i/$cnt] Removing submodule files."
    git rm --cached "$submodule_name"
    rm -rf "$submodule_name"
    rm -rf ".git/modules/$submodule_name"
    $i=$((i + 1))

else
    echo "Usage: "
    echo "  $0 add submodule <repository_name> <semester_number>"
    echo "  $0 remove submodule <repository_name> <semester_number>"
    exit 1
fi