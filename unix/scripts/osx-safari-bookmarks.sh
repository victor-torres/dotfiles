# !/bin/bash
# -*- coding: utf-8 -*-
#
# This script extracts URLs from Safari Bookmarks and Reading List.
#
# Originally posted by ImprovingApple on Safari Support Community
# on Jun 26, 2014 1:27 AM in response to JIHO 069
# https://discussions.apple.com/message/26197722#message26197722
/usr/bin/plutil -convert xml1 -o - ~/Library/Safari/Bookmarks.plist | grep -E  -o '<string>http[s]{0,1}://.*</string>' | grep -v icloud | sed -E 's/<\/{0,1}string>//g'
