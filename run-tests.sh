#!/bin/bash
set -ev

if [ "${LIBEVENT_DISABLED}" = "true" ]; then
    phpenv config-rm libevent.ini
    phpunit tests/CreateStreamSelectLoopTest.php
else
    phpunit tests/CreateLibEventLoopTest.php
fi
