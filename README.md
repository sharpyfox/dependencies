Dependencies
============

project dependencies

## Как собрать
Сперва нужно установить все зависимости. Может быть выполнено с помощью:

	$ sudo apt-get install libc6-dev libssl-dev liblua5.1-dev autoconf automake libtool g++
	$ sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.so /usr/lib/liblua.so
	$ sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.a /usr/lib/liblua.a
	


	git submodule update --init --recursive

Проект собирается командой:

	$ make
	
Кроме того можно собрать библиотеки по отдельности, используя ключи из Makefile

