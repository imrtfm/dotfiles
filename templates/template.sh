#!/bin/bash
################################################################################
#
# Author  : David Calvert
# Purpose : ...
#
################################################################################

set -e

################################################################################
# Variables
################################################################################

W='\e[37m' # White
R='\e[91m' # Red
G='\e[92m' # Green
B='\e[96m' # Blue
Y='\e[93m' # yellow
P='\e[95m' # Purple
NC='\e[0m' # No Color

################################################################################
# Usage
################################################################################

usage()
{
    echo -e "
 ${Y}Usage:${W} $(basename ${0}) ${G}[OPTION]${W} ${B}[ARG]${W}

 ${Y}Options:${W}

     ${G}-h${W} | ${G}--help${W} : Print this help page.

 ${Y}Exemples:${W}

     $(basename ${0}) -h
    ${NC}"
    [[ $1 == 0 ]] && exit 0 || exit 1
}

################################################################################
# Application
################################################################################

app()
{
    echo "app"
}

################################################################################
# Application Selector
################################################################################

args=("$@")

# If no arg, print help
[[ $# == 0 ]] && usage

# Parse args
case $1 in
    -h|--help) usage 0 ;;
    *) usage ;;
esac
