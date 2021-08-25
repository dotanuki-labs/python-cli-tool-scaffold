#!/usr/bin/env bash

set -e

readonly color_cyan="\033[1;36m"
readonly color_normal="\033[0m"

if [ -z "$1" ]; then
    echo
    echo "🚫 Error : no arguments provided. Must provide a name in snake_case format"
    echo -e "Usage : ${color_cyan}./scaffold <your_project_name>${color_normal}"
    echo
    exit 1
fi

if [[ ! "$1" =~ ^[a-z][a-z_]*$ ]]; then
    echo
    echo "🚫 Error : $1 is not in ${color_cyan}snake_case${color_normal} format. Aborting."
    echo
    exit 1
fi

readonly scaffold_name="python_cli_tool_scaffold"
readonly scaffold_tool="python-cli-tool-scaffold"
readonly target_name="$1"
readonly target_tool=${target_name//_/-}

echo
echo -e "🔥 Scaffolding with ${color_cyan}$target_name${color_normal}"
echo

echo -e " ‣ Renaming ${color_cyan}$scaffold_name${color_normal} folder as ${color_cyan}$target_name${color_normal}"
mv python_cli_tool_scaffold "$target_name"

echo -e " ‣ Replacing references on ${color_cyan}tests${color_normal} folder"
sed -i '' "s/$scaffold_name/$target_name/g" tests/test_app.py

echo -e " ‣ Replacing references on ${color_cyan}Makefile${color_normal}"
sed -i '' "s/$scaffold_name/$target_name/g" Makefile

echo -e " ‣ Replacing references on ${color_cyan}pyproject.toml${color_normal}"
sed -i '' "s/$scaffold_name/$target_name/g" pyproject.toml
sed -i '' "s/$scaffold_tool/$target_tool/g" pyproject.toml

echo -e " ‣ Writing new ${color_cyan}README.md${color_normal} file"
rm README.md
touch README.md
echo "#$target_tool" >README.md

echo " ‣ Removing git references"
rm -rf .git

echo " ‣ Removing this script"
rm scaffold.sh

echo
echo -e "🔥 Done! Please fill the additional info at ${color_cyan}pyproject.toml${color_normal} :"
echo
echo -e " • A proper ${color_cyan}description${color_normal} for this project"
echo -e " • The ${color_cyan}author(s)${color_normal} of this project"
echo -e " • A proper ${color_cyan}homepage${color_normal} URL"
echo -e " • A proper ${color_cyan}Github repository${color_normal} URL"
echo
