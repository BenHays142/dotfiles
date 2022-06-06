#!/bin/bash

export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
cd ~/Burp\ Suite\ Professional\ 2022.3.9
java -noverify -javaagent:burploader.jar -jar burpsuite_pro_v2022.3.9.jar
