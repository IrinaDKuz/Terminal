#!/bin/bash

# Termial. HW_2
# 1. Сделать папку dir_1
mkdir dir_1
# 2. Зайти в папку dir_1
cd dir_1
# 3. Создать папку inner_dir_1
mkdir inner_dir_1
# 4. Посмотреть где ты находишься
pwd
# 5. Находясь в папке dir_1 создать пустой текстовый файл tf_1.txt
touch tf_1.txt
# 6. Находясь в папке dir_1 через команду cat создать текстовый файл tf_2.txt со следующими строками:
#- the first 1
#- the second 2
#- the third 3
cat > "tf_2.txt" << EOF
the first 1
the second 2
the third 3
EOF
# 7. Зайти в папку inner_dir_1
cd inner_dir_1 
# 8. Через cat сделать текстовый файл tf_3.txt  c любыми строками
cat > "tf_3.txt" << EOF
first any string 1
second any string 2
third any string 3
EOF
# 9. Через cat добавить в текстовый файл tf_3.txt строку “the second 2”
cat >> "tf_3.txt" << EOF
the second 2
EOF
# 10. Через cat добавить в текстовый файл tf_3.txt строку “the sec 2”
cat >> "tf_3.txt" << EOF
the sec 2
EOF
# 11. Через cat добавить в текстовый файл tf_2.txt строку “the sec 3”
cat >> "tf_2.txt" << EOF
the sec 3
EOF
# 12. Через cat добавить в текстовый файл tf_3.txt строку “the SeCoNd 2”
cat >> "tf_3.txt" << EOF
the SeC oNd 2
EOF
# 13. Через cat добавить в текстовый файл tf_2.txt строку “the seConD 2”
cat >> "tf_2.txt" << EOF
the seConD 2
EOF
# 14. Сделать текстовый файл tf_4.txt в котором будет 15 строк.
for i in {1..15}; do
    echo "This is line $i of 15" >> tf_4.txt
done
# 15. Сделать текстовый файл tF_5.txt в котором будет 13 строк.
for i in {1..13}; do
    echo "This is line $i of 13" >> tF_5.txt
done
# 16. Вывести список всех файлов в папке.
find . -type f
# 17. Выйти из папки inner_dir_1
cd ..
# 18. Вывести содержимое файла tf_3.txt в терминал.
cd inner_dir_1
cat tf_3.txt
# 19. Найти путь к файлу tf_4.txt
find . -name tf_4.txt
find /Users/Irina/Desktop/QA/SandBox/HW2/dir_1 -name tf_4.txt
# 20. Очистить файл tf_4.txt от содержимого без удаления самого файла.
cat > "tf_4.txt" << EOF
EOF
# 21. Найти путь к файлам у которых есть  “tf” в названии.
find /Users/Irina/Desktop/QA/SandBox/HW2/dir_1 -type f -name "*tf*"
# 22. Найти путь к файлам у которых есть  “tf” в названии и буквы в любом регистре.
find /Users/Irina/Desktop/QA/SandBox/HW2/dir_1 -type f -iname "*tf*"
# 23. Найти строки в файлах где есть комбинация букв “sec” в текущей папке
grep sec ./*
# 24. Найти строки в файлах где есть комбинация букв “sec” в любом регистре в текущей папке
grep -i sec ./*
# 25. Найти строки в файлах где есть только комбинация букв “sec” в текущей папке
grep -w sec ./*
# 26. Найти строки в файлах где есть только комбинация букв “sec” в любом регистре в текущей папке
grep -i -w sec ./*
# 27. Найти строки в файлах где есть комбинация букв “second” в текущей папке
grep second ./*
# 28. Найти строки в файлах где есть комбинация букв “second” в любом регистре в текущей папке
grep -i second ./*
# 29. Найти строки в файлах где есть комбинация букв “second” во всех папках ниже уровнем
grep -r second .
# 30. Найти только путь и название файла в строках которых есть комбинация букв “second” в текущей папке
grep -l second ./*
# 31. Найти все строки во всех файлах где нет комбинации “second”
grep -r -v second .
# 32. Найти только название и путь к файлам где нет комбинации “second”
grep -r -l -v second .
# 33. Вывести в терминал 4 последних строк любого текстового файла
tail -n 4 tF_5.txt
# 34. Вывести в терминал 4 первые строки любого текстового файла.
head -n 4 tF_5.txt
# 35. Команда в одну строку. Создать папку и создать текстовый файл с содержиммым.
mkdir inner_dir_1_1 && echo "Hello, World" > inner_dir_1_1/file_1_1.txt
# 36. Команда в одну строку. Переместить в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”
grep -rlw "sec" . | xargs -I % mv % ./inner_dir_1_1/
# 37. Команда в одну строку. Скопировать в любую одну папку текстовые файлы у которых в содержимом есть слово “sec”
mkdir inner_dir_1_2 && grep -rlw "sec" . | xargs -I % cp % ./inner_dir_1_2/
# 38. Команда в одну строку. Найти все строки c “sec” во всех текстовых файлах, скопировать и вставить эти строки в один новый созданный текстовый файл.
grep -r -h "sec" . | xargs -I % echo % >> NewFile.txt
# 39. Команда в одну строку. Удалить текстовые файлы у которых в содержимом есть слово “sec”
grep -rl "sec" . | xargs -I % rm -r %
# 40. Просто вывести в терминал строку “Good job!!”
echo "Good job!!"

exit 0