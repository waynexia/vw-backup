#!/bin/sh
cd /root/vw-backup
rm -r /root/vw-backup/attachments /root/vw-backup/db.sqlite3
sqlite3 /root/valuevarden/vw-data/db.sqlite3 ".backup '/root/vw-backup/db.sqlite3'"
cp -r /root/valuevarden/vw-data/attachments /root/vw-backup/attachments
git add .
git commit -m "Update $(date)"
git push
