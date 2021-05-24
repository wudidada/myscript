#!/bin/sh

cd ~/scrapyd/bin || (echo "scrapyd directory not exists." && exit)
. ~/scrapyd/bin/activate

python3 -m pip install -r ~/requirements.txt -i https://mirrors.aliyun.com/pypi/simple/