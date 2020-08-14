set -e

CYAN="\033[0;36m"
NORMAL="\033[0m"

if [ -z "$1" ]; then
    echo "\n🚫 Error : no arguments provided. Must provide a name in snake_case format"
    echo "Usage : ${CYAN}./scaffold <your_project_name>${NORMAL}\n"
    exit 1
fi

if [[ ! "$1" =~ ^[a-z][a-z_]*$ ]]; then
    echo "\n🚫 Error : $1 is not in ${CYAN}snake_case${NORMAL} format. Aborting.\n"
    exit 1
fi

SCAFFOLD_NAME="python_cli_tool_scaffold"
PROJECT_NAME=$1

echo "\nScaffolding with ${CYAN}$PROJECT_NAME${NORMAL}\n"

echo "🔥 Renaming ${CYAN}python_cli_tool_scaffold${NORMAL} as ${CYAN}$PROJECT_NAME${NORMAL}"
mv python_cli_tool_scaffold $PROJECT_NAME

echo "🔥 Replacing references on ${CYAN}tests${NORMAL} folder"
sed -i '' "s/$SCAFFOLD_NAME/$PROJECT_NAME/g" tests/test_app.py

echo "🔥 Replacing references on ${CYAN}Makefile${NORMAL}"
sed -i '' "s/$SCAFFOLD_NAME/$PROJECT_NAME/g" Makefile

echo "🔥 Replacing references on ${CYAN}pyproject.toml${NORMAL}"
sed -i '' "s/$SCAFFOLD_NAME/$PROJECT_NAME/g" pyproject.toml

echo "🔥 Writing new ${CYAN}README.md${NORMAL} file"
rm README.md
touch README.md
echo "#$PROJECT_NAME" > README.md

echo "🔥 Removing this script"
rm scaffold.sh

echo "\nDone.\n"
