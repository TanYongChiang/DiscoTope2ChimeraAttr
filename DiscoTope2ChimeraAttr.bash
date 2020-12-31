#!/bin/bash

# convert DiscoTope output into Chimera Attributes
# Name of attribute: CustomAttribute

clear

printf "

DiscoTope2ChimeraAttr

Developed by: Tan Yong Chiang
Kindly mention in acknowledgement if has helped your publication, thank you!

-----------------------------------------------------------------
"
printf "
Current Directory is %s
" $PWD
printf "
Enter Directory Containing Files to be Converted:

"
read vardir

for inputfiles in $vardir/*
do
y=${inputfiles%%.*}
TrueInput=$y
Suffix=.txt
Input=$TrueInput$Suffix
AppendTxt=_Appended
Output=$TrueInput$AppendTxt$Suffix
	
printf "attribute: CustomAttribute
match mode: 1-to-1
recipient: residues
" > $Output
	
head -n -1 $Input | awk -v OFS='\t' '{print "", ":"$2, $6}' >> $Output
# cat $Input | awk -v OFS='\t' '{print "", ":"$2, $6}' >> $Output
done
