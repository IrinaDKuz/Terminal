#!/bin/bash

FOLDER="folder_4"

rm -rf $FOLDER
echo "remove ${FOLDER} with content by force"
mkdir $FOLDER
echo "create ${FOLDER}"
cd $FOLDER
echo "go to ${FOLDER}"

mkdir fol_1 fol_2 fol_3
echo "create 3 new folders"
cd fol_1
echo "go to fol_1"
cd ..
echo "go back to ${FOLDER}"
touch file1.json file2.json note1.txt note2.txt note3.txt
echo "create 5 new files"
echo "${FOLDER} contains:"
ls -la
mv file1.json file2.json fol_2/
echo "move 2 files to fol_2"



exit 0

