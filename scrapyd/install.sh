#!/bin/sh

cd ~ || exit
python3 -m venv scrapyd

. scrapyd/bin/activate
python3 -m pip install -U pip
pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/

pip3 install scrapy
pip3 install scrapyd
pip3 install logparser