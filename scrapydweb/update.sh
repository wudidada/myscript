#!/bin/sh

cd ~/scrapydweb/bin || (echo "scrapydweb directory not exists." && exit)
. ~/scrapydweb/bin/activate

cd ~/scrapy_projects/spidermanager || (echo "spider project not exists." && exit)
git pull

python3 -m pip install -r ~/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple