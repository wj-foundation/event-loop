#!/bin/bash
wget http://pecl.php.net/get/libevent-0.1.0.tgz
tar zxvf libevent-0.1.0.tgz
cd libevent-0.1.0
phpize
./configure --with-libevent=/usr/local/libevent-2.0.22-stable
make
make install
