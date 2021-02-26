#!/bin/bash
pwd
while read -p "Введите имя файла: "; do
	if time=$(stat -c %Y "$REPLY"); then
		break
	fi
done
read -p "Введите дату: "
if [ "$time" \> "$(date -d"$REPLY" +%s)" ]; then
	echo inode файла изменен
	exit 120
fi
echo inode файла не изменен
