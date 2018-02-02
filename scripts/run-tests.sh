#!/bin/bash
set -ev

if [ "$LIBEVENT_ENABLED" = "false" ]; then
    phpunit tests/CreateStreamSelectLoopTest.php
else
    pecl install -f libevent
    phpunit tests/CreateLibEventLoopTest.php
fi
