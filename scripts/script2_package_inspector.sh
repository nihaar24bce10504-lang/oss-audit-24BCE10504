#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Nihaar Gupta

PACKAGE="git"

echo "======================================"
echo "   FOSS Package Inspector"
echo "======================================"

# -------- CHECK IF INSTALLED --------
if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed ✅"

    echo ""
    echo "Package Details:"
    echo "------------------------------"

    # Get version
    VERSION=$($PACKAGE --version)
    echo "Version: $VERSION"

else
    echo "$PACKAGE is NOT installed ❌"
fi

# -------- CASE STATEMENT --------
echo ""
echo "About the Software:"
echo "------------------------------"

case $PACKAGE in
    git)
        echo "Git: A distributed version control system created by Linus Torvalds."
        ;;
    apache)
        echo "Apache: A powerful open-source web server."
        ;;
    mysql)
        echo "MySQL: An open-source relational database system."
        ;;
    python)
        echo "Python: A popular open-source programming language."
        ;;
    *)
        echo "Unknown package."
        ;;
esac

echo "======================================"