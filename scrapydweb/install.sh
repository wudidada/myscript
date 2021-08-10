#!/bin/sh

cd ~ || exit
python3 -m venv scrapydweb

. scrapydweb/bin/activate
python3 -m pip install -U pip
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

pip3 install scrapydweb && mkdir -p scrapy_projects