## Linux terminal (GitBash) commands

### HomeWork 1:
1) Посмотреть где я:

    Use the `pwd` command to check the current directory:
    ```
    Irina@MacBook-Pro-Aleksandr-2 ~ % pwd
    ```
   *Tip: pwd is an abbreviation of "print working directory"*

2) Зайти в папку:

   Use the `cd` command and type the directory name.
    ```
    Irina@MacBook-Pro-Aleksandr-2 Desktop % cd Desktop/QA/01_Terminal
    ```
   *Tip: cd is an abbreviation of "change directory"*

3) Создать папку:

   Use the `mkdir` command.
    ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mkdir new_folder1
   ```
   *Tip: cd is an abbreviation of "make directory"*

4) Создать 3 папки:

   Use the `mkdir` command, separate names by `spaces`.
    ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mkdir folder_1 folder_2 folder_3
    ```
   
5) Зайти в любую папку:
   ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % cd folder_1
   ```

6) Создать 5 файлов (3 txt, 2 json):

   Use the `touch` command for create empty files, write the names separated by a space, remember to add formats.
   ```
   Irina@MacBook-Pro-Aleksandr-2 folder_1 % touch file1.json  file2.json  notes1.txt  notes2.txt  notes3.txt
    ```
7) Создать 3 папки
    ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mkdir folder_1_1 folder_2_2 folder_3_3
    ```

8) Вывести список содержимого папки:
   
    Use the `ls` command. Or `ls -la` for hidden files and more useful view
   ```
   Irina@MacBook-Pro-Aleksandr-2 01_Terminal % ls
   ```
   In response, we should get:
   ```
   HomeWork.txt	folder_1	folder_2	folder_3	new_folder1
   ```

9) Открыть любой txt файл &

    Use `cat` command.
10) написать туда что-нибудь, любой текст &

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
11) Сохранить и выйти:

    Press `Esc`, then type `:wq` to save and quit in vim redactor

12) Выйти из папки на уровень выше:

    Use the `cd ..` (or `cd ../..`, `../folder1 `) command.
    ```
    Irina@MacBook-Pro-Aleksandr-2 folder_1 % cd ..
    ```
13) Переместить любые 2 файла, которые вы создали, в любую другую папку:

    Use `mv [source] [destination]` command to move 2 .json files from folder_1 to folder_2:
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % mv folder_1/file1.json folder_1/file2.json folder_2
    ```

14) Скопировать любые 2 файла, которые вы создали, в любую другую папку:

    Use `cp [source] [destination]` command to copy 2 .json files from folder_2 to folder_3:
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % cp folder_2/file1.json folder_2/file2.json folder_3
    ```
    Tip:
    a) For a copying the directory, use the `-r` option
    `cp -r my_directory/ new_directory/`

    b) Use curly branches: `cp folder_2/{file1.json,file2.json} folder_3`.

15) Найти файл по имени:
    Use `find [search_directory] -name [filename_pattern]` command
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % find . -name file1.json
    ```
    ```  
    ./folder_2/folder_3/file1.json
    ./folder_2/file1.json
    ./folder_3/file1.json
    ```

16) Просмотреть содержимое в реальном времени:

    Use `tail -F [filename]` command to display the last 10 lines of the file, and then continue to display new lines as they are added. To exit, press `Ctrl + C`.
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % tail -F file_7.txt
    ```
16) Фильтр по содержимому:

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
17) Вывести несколько первых строк из текстового файла:

    Use `head` command.
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % head file_7.txt
    ```
18) Вывести несколько последних строк из текстового файла:

    Use `tail [filename]` command (10 by default).
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % tail file_7.txt
    ```
19) Просмотреть содержимое длинного файла (команда less) изучите как она работает:

    Use the `less` command
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % less HomeWork.txt
    ```
    *Tip: Type `/` to find something*

20) Вывести дату и время:

    Use the `date` command:
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % date
    ```
    ```
    среда, 19 апреля 2023 г. 14:54:44 (CEST)
    ```
### Additional tasks:
21) 
    Отправить http запрос на сервер. http://162.55.220.72:5005/terminal-hw-request
    Use the `curl` command
    ```
    Irina@MacBook-Pro-Aleksandr-2 01_Terminal % curl http://162.55.220.72:5005/terminal-hw-request
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
    <title>404 Not Found</title>
    <h1>Not Found</h1>
    <p>The requested URL was not found on the server. If you entered the URL manually please check your spelling and try again.</p>
    ```
    
22) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13

You can see the script code here: [scriptForHW1.sh](https://github.com/IrinaDKuz/Terminal/blob/main/scriptForHW1.sh)

*Note: to run this script from the directory where the file is located, use `bash script.sh` on Terminal*


### HomeWork_2

1. Сделать папку dir_1
```
mkdir dir_1
```

2. Зайти в папку dir_1
```
cd dir_1
```

3. Создать папку inner_dir_1
```
mkdir inner_dir_1
```

4. Посмотреть где ты находишься
```
pwd
```
5. Находясь в папке dir_1 создать пустой текстовый файл tf_1.txt
```
touch tf_1.txt
```

6. Находясь в папке dir_1 через команду cat создать текстовый файл tf_2.txt со следующими строками:
- the first 1
- the second 2
- the third 3
```
cat > "tf_2.txt"
the first 1
the second 2
the third 3
```
7. Зайти в папку inner_dir_1
```
cd inner_dir_1
``` 

8. Через cat сделать текстовый файл tf_3.txt  c любыми строками
```
cat > "tf_3.txt"
first any string 1
second any string 2
third any string 3
```

9. Через cat добавить в текстовый файл tf_3.txt строку “the second 2”
```
cat >> "tf_3.txt"
the second 2
```

10. Через cat добавить в текстовый файл tf_3.txt строку “the sec 2”
```
cat >> "f_3.txt"
the sec 2
```
11. Через cat добавить в текстовый файл tf_2.txt строку “the sec 3”
```
cat >> tf_2.txt
the sec 3
```

12. Через cat добавить в текстовый файл tf_3.txt строку “the SeCoNd 2”
```
cat >> "tf_3.txt" << EOF
the SeC oNd 2
```

13. Через cat добавить в текстовый файл tf_2.txt строку “the seConD 2”
```
cat >> "tf_2.txt"
the seConD 2
```

14. Сделать текстовый файл tf_4.txt в котором будет 15 строк.
```
for i in {1..15}; do
    echo "This is line $i of 15" >> tf_4.txt
done
```

15. Сделать текстовый файл tF_5.txt в котором будет 13 строк.
```
for i in {1..13}; do
    echo "This is line $i of 13" >> tF_5.txt
done
```
16. Вывести список всех файлов в папке.
```
find . -type f
```

17. Выйти из папки inner_dir_1
```
cd ..
```

18. Вывести содержимое файла tf_3.txt в терминал.
```
cd inner_dir_1
cat tf_3.txt
```

19. Найти путь к файлу tf_4.txt
```
find . -name tf_4.txt
find /Users/Irina/Desktop/QA/SandBox/HW2/dir_1 -name tf_4.txt
```

20. Очистить файл tf_4.txt от содержимого без удаления самого файла.
```
cat > tf_4.txt
""
```

21. Найти путь к файлам у которых есть  “tf” в названии.
```
find /Users/Irina/Desktop/QA/SandBox/HW2/dir_1 -type f -name "*tf*"
```

22. Найти путь к файлам у которых есть  “tf” в названии и буквы в любом регистре.
```
find /Users/Irina/Desktop/QA/SandBox/HW2/dir_1 -type f -iname "*tf*"
```

23. Найти строки в файлах где есть комбинация букв “sec” в текущей папке
```
grep sec ./*
```

24. Найти строки в файлах где есть комбинация букв “sec” в любом регистре в текущей папке
```
grep -i sec ./*
```

25. Найти строки в файлах где есть только комбинация букв “sec” в текущей папке
```
grep -w sec ./*
```

26. Найти строки в файлах где есть только комбинация букв “sec” в любом регистре в текущей папке
```
grep -i -w sec ./*
```

27. Найти строки в файлах где есть комбинация букв “second” в текущей папке
```
grep second ./*
```

28. Найти строки в файлах где есть комбинация букв “second” в любом регистре в текущей папке
```
grep -i second ./*
```

29. Найти строки в файлах где есть комбинация букв “second” во всех папках ниже уровнем
```
grep -r second .
```

30. Найти только путь и название файла в строках которых есть комбинация букв “second” в текущей папке
```
grep -l second ./*
```

31. Найти все строки во всех файлах где нет комбинации “second”
```
grep -r -v second .
```

32. Найти только название и путь к файлам где нет комбинации “second”
```
grep -r -l -L second .
```

33. Вывести в терминал 4 последних строк любого текстового файла
```
tail -n 4 tF_5.txt
```

34. Вывести в терминал 4 первые строки любого текстового файла.
```
head -n 4 tF_5.txt
```

35. Команда в одну строку. Создать папку и создать текстовый файл с содержиммым.
```
mkdir inner_dir_1_1 && echo "Hello, World" > inner_dir_1_1/file_1_1.txt
```

36. Команда в одну строку. Переместить в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”
```
grep -rlw "sec" . | xargs -I % mv % ./inner_dir_1_1/
```

37. Команда в одну строку. Скопировать в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”
```
mkdir inner_dir_1_2 && grep -rlw "sec" . | xargs -I % cp % ./inner_dir_1_2/
```

38. Команда в одну строку. Найти все строки c “sec” во всех текстовых файлах, скопировать и вставить эти строки в один новый созданный текстовый файл.
```
grep -r -h "sec" . | xargs -I % echo % >> NewFile.txt
```
или
```
grep -r -h "sec" . > NewFile.txt
```

39. Команда в одну строку. Удалить текстовые файлы у которых в содержимом есть слово “sec”
```
grep -rl "sec" . | xargs -I % rm -r %
```

40. Просто вывести в терминал строку “Good job!!”
```
echo "Good job!!"
```


### Thank you for reading!

![Картинка](https://fikiwiki.com/uploads/posts/2022-02/1644984017_1-fikiwiki-com-p-kartinki-zhivotnikh-na-avu-1.jpg)

