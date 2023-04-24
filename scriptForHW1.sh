#!/bin/bash
# to run this script use "bash script.sh" on Terminal
FOLDER="folder_4"
echo "remove ${FOLDER} with content by force"
rm -rf $FOLDER
echo "create ${FOLDER}"
mkdir $FOLDER
echo "go to ${FOLDER}"
cd $FOLDER
echo "create 3 new folders"
mkdir fol_1 fol_2 fol_3
echo "go to fol_1"
cd fol_1
echo "go back to ${FOLDER}"
cd ..
echo "create 5 new files"
touch file1.json file2.json note1.txt note2.txt note3.txt
echo "${FOLDER} contains:"
ls -la
echo "move 2 files to fol_2"
mv file1.json file2.json fol_2/
exit 0

