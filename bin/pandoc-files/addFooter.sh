#!/bin/bash

echoFooter ()
{
echo "<!--"
echo "\\fancyfoot[RO,LE]{$1}"
echo ""
date "+!%Y-%m-%d"
echo ""
echo "-->"
}


if [[  $1 == "u" ]]; then
    echoFooter "currentTech.ch 079 322 18 80"
elif [[  $1 == "p" ]]; then
    echoFooter "Domenic - PRIVAT"
elif [[  $1 == "s" ]]; then
    echoFooter "currentSecurity.ch - 079 322 18 80"
elif [[  $1 == "t" ]]; then
    echoFooter "currentSecurity.ch - 079 322 18 80"
else
    echoFooter "Domenic - PRIVAT"
fi

