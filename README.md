## Linux terminal (GitBash) commands
### Tasks:

> 1. Посмотреть где я
> 2. Создать папку
> 3. Зайти в папку
> 4. Создать 3 папки 
> 5. Зайти в любую папку 
> 6. Создать 5 файлов (3 txt, 2 json)
> 7. Создать 3 папки 
> 8. Вывести список содержимого папки 
> 9. Открыть любой txt файл 
> + написать туда что-нибудь, любой текст. 
> + сохранить и выйти. 
> 12. Выйти из папки на уровень выше 
> 13. Переместить любые 2 файла, которые вы создали, в любую другую папку. 
> 14. Скопировать любые 2 файла, которые вы создали, в любую другую папку. 
> 15. Найти файл по имени 
> 16. Просмотреть содержимое в реальном времени (команда grep) изучите как она работает. 
> 17. Вывести несколько первых строк из текстового файла 
> 18. Вывести несколько последних строк из текстового файла 
> 19. Просмотреть содержимое длинного файла (команда less) изучите как она работает. 
> 20. Вывести дату и время
> 21. *Отправить http запрос на сервер.
   http://162.55.220.72:5005/terminal-hw-request
> 22. *Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13

### Answers:
1) Check where am I:

    Use the `pwd` command to check the current directory:
    ```
    Irina@MacBook-Pro-Aleksandr-2 ~ % pwd
    ```
   *Tip: pwd is an abbreviation of "print working directory"*

2) Go to the folder:

   Use the `cd` command and type the directory name.
    ```
    Irina@MacBook-Pro-Aleksandr-2 Desktop % cd Desktop/QA/01_Terminal
    ```
   *Tip: cd is an abbreviation of "change directory"*

3) Make a new folder:

   Use the `mkdir` command.
    ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mkdir new_folder1
   ```
   *Tip: cd is an abbreviation of "make directory"*

4) Make 3 new folders:

   Use the `mkdir` command, separate names by `spaces`.
    ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mkdir folder_1 folder_2 folder_3
    ```
   
5) Go to any of these 3 folders:
   ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % cd folder_1
   ```

6) Create 5 files (3 x .txt, 2 x .json):

   Use the `touch` command for create empty files, write the names separated by a space, remember to add formats.
   ```
   Irina@MacBook-Pro-Aleksandr-2 folder_1 % touch file1.json  file2.json  notes1.txt  notes2.txt  notes3.txt
    ```
7) See n. 4)   
8) Show the list of current folder elements:
   
    Use the `ls` command. Or `ls -la` for hidden files and more useful view
   ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % ls
   ```
   In response, we should get:
   ```
   HomeWork.txt	folder_1	folder_2	folder_3	new_folder1
   ```

9) Open one of txt files &

    Use `cat` command.
10) Write anything in this file &

    a) To write something in **empty** file:
    
    Use `cat >` command to rewrite file. After adding text, press Ctrl+C to save and quit the file.
    ```
    Irina@MacBook-Pro-Aleksandr-2 folder_1 % cat > notes1.txt
    ``` 
    b) To add something in **not empty file**:

    Use `cat >>` or `vim` 

    Vim editor allows us to add information to the file
    press `i` to Insert, which allows you to edit the file
    add the text info to the file.
11) Save and quit:

    Press `Esc`, then type `:wq` to save and quit in vim redactor

12) Go to the directory located 1 level above:

    Use the `cd ..` (or `cd ../..`) command.
    ```
    Irina@MacBook-Pro-Aleksandr-2 folder_1 % cd ..
    ```
13) Move any 2 files to any folder:

    Use `mv [source] [destination]` command to move 2 .json files from folder_1 to folder_2:
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mv folder_1/file1.json folder_1/file2.json folder_2
    ```

14) Copy any 2 files to any folder:

    Use `cp [source] [destination]` command to copy 2 .json files from folder_2 to folder_3:
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % cp folder_2/file1.json folder_2/file2.json folder_3
    ```
    Tip:
    a) For a copying the directory, use the `-r` option
    `cp -r my_directory/ new_directory/`

    b) Use curly branches: `cp folder_2/{file1.json,file2.json} folder_3`.

15) Find a file/folder by name:
    Use `find [search_directory] -name [filename_pattern]` command
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % find . -name file1.json
    ```
    ```  
    ./folder_2/folder_3/file1.json
    ./folder_2/file1.json
    ./folder_3/file1.json
    ```

16) Show file content in real time:

    Use `tail -F [filename]` command to display the last 10 lines of the file, and then continue to display new lines as they are added. To exit, press `Ctrl + C`.
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % tail -F file_7.txt
    ```
16) Filtered by a keyword:

    Use `grep [pattern] [filename]` command.
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % grep things folder_1/notes1.txt
    ```
    Response:
    ```
    Two things are infinite: the universe and human stupidity;
    If you want to live a happy life, tie it to a goal, not to people or things.
    ```
    *Tip: use combination of tail and grep for search keyword in the tail*
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % tail -F file_7.txt | grep "not"`
    ```
17) Show several of the first lines from the text file:

    Use `head` command.
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % head file_7.txt
    ```
18) Show several of the last lines from the text file:

    Use `tail [filename]` command (10 by default).
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % tail file_7.txt
    ```
19) Show content of a large file:

    Use the `less` command
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % less HomeWork.txt
    ```
    *Tip: Type `/` to find something*

20) Show current date and time:

    Use the `date` command:
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % date
    ```
    ```
    среда, 19 апреля 2023 г. 14:54:44 (CEST)
    ```
### Additional tasks:
21) 
    Send a http request to the server http://162.55.220.72:5005/terminal-hw-request
    Use the `curl` command
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % curl http://162.55.220.72:5005/terminal-hw-request
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
    <title>404 Not Found</title>
    <h1>Not Found</h1>
    <p>The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.</p>
    ```
    
22) Write a script for automation running items: 3, 4, 5, 6, 7, 8, 13

You can see the script code here: [scriptForHW1.sh](https://github.com/IrinaDKuz/Terminal/blob/main/scriptForHW1.sh)

*Note: to run this script from the directory where the file is located, use `bash script.sh` on Terminal*

### Thank you for reading!

![Картинка](https://fikiwiki.com/uploads/posts/2022-02/1644984017_1-fikiwiki-com-p-kartinki-zhivotnikh-na-avu-1.jpg)

