#! /bin/bash
## Converts Quattro Pro WB3 spreadsheets to Excel XLS
## using Gnumeric SSCONVERT utility
##
## By Devin - 6/25/13
##
## Replace the PATHs in FILES with paths to all folders containing WB3 files
## (Yes, it's terrible)


FILES="PATH1
PATH2
..."

for f in $FILES
do
  for g in $f/*.wb3
	do
		echo "Processing $g"
		ssconvert --export-type=Gnumeric_Excel:excel_dsf $g
	done
done
