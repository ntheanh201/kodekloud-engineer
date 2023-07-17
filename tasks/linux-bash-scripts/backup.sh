#!/bin/bash

zip -r xfusioncorp_news.zip /var/www/html/news
mv xfusioncorp_news.zip /backup/xfusioncorp_news.zip

scp /backup/xfusioncorp_news.zip clint@172.16.238.16:/backup