#!/bin/bash

wget https://xkcd.com/ -O - 2> /dev/null | sed -n -e 's/.*\(\/\/imgs.xkcd.com\/comics\/[^ "]*\).*/https:\1/gp' | head -n 1 | xargs imgcat
