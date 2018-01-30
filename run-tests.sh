#!/bin/bash
set -ev

if [ "${LIBEVENT_ENABLED}" = "false" ]; then
    phpunit tests/CreateStreamSelectLoopTest.php
else
    phpenv config-add libevent.ini
    phpunit tests/CreateLibEventLoopTest.php
fi
