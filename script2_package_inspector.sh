#!/bin/bash
# Script 2: FOSS Package Inspector
# Description: Checks if Python is installed and prints package details

PACKAGE="python3"   # Define the package name

# -------- Check Installation --------
# 'command -v' checks if command exists (works on all Linux systems)
if command -v $PACKAGE &> /dev/null; then
    echo "$PACKAGE is installed on this system."

    # Display Python version
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

# -------- Case Statement --------
# Provides description based on package name
case $PACKAGE in
    python3)
        echo "Python: A simple, powerful, and open-source programming language."
        ;;
    git)
        echo "Git: Distributed version control system."
        ;;
    apache2)
        echo "Apache: Open-source web server."
        ;;
    mysql-server)
        echo "MySQL: Open-source relational database system."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
