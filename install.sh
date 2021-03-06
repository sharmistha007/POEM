#!/bin/bash

# get the scripts path
SCRIPT=`realpath -s $0`
SCRIPTPATH=`dirname $SCRIPT`


# download the cog2014 database.
echo "Download COG database"
wget -q -c ftp://ftp.ncbi.nih.gov/pub/COG/COG2014/data/*2014* -P $SCRIPTPATH/database/cog/cog2014

# unzip cog fasta file and format
echo "Unzip cog fasta and format the file by diamond"
gunzip $SCRIPTPATH/database/cog/cog2014/prot2003-2014.fa.gz
diamond makedb --in $SCRIPTPATH/database/cog/cog2014/prot2003-2014.fa -d $SCRIPTPATH/database/cog/cog2014/prot2003-2014.fa



# download the anaconda and install the dependent packages.
