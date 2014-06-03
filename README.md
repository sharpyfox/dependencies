Dependencies
============

project dependencies

## How to build
First of all you need to install all dependencies. It could be done with:

	$ sudo apt-get install libc6-dev libssl-dev liblua5.1-dev autoconf automake libtool g++
	$ sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.so /usr/lib/liblua.so
	$ sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.a /usr/lib/liblua.a
	
Init all submodules with

	git submodule update --init --recursive

To build just use:

	$ make
	
You could also build any specific library using keys from a Makefile

