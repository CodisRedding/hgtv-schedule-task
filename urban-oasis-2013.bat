@echo off
curl -i -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Encoding: 
gzip,deflate,sdch" -H "Accept-Language:en-US,en;q=0.8" -H "Cache-Control:max-age=0" -H "Connection:keep-alive" -H 
"Content-Type:application/x-www-form-urlencoded" -H "Host:www.enter-today.com" -H "Origin:http://www.frontdoor.com" 
-H "Referer:http://www.frontdoor.com/hgtv-urban-oasis-2013-giveaway-entry-form" -H "User-Agent:Mozilla/5.0 (X11; 
Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36" -d @data-frontdoor.txt 
http://www.enter-today.com/SweepsTransaction/entry.do >> "%~dp0\log.txt"
curl -i -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" -H "Accept-Encoding: 
gzip,deflate,sdch" -H "Accept-Language:en-US,en;q=0.8" -H "Cache-Control:max-age=0" -H "Connection:keep-alive" -H 
"Content-Type:application/x-www-form-urlencoded" -H "Host:www.enter-today.com" -H "Origin:http://www.hgtv.com" -H 
"Referer:http://www.hgtv.com/hgtv-urban-oasis-2013-giveaway-enter/package/index.html" -H "User-Agent:Mozilla/5.0 
(X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36" -d @data-hgtv.txt 
http://www.enter-today.com/SweepsTransaction/entry.do >> "%~dp0\log.txt"
exit