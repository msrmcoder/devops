# initialize files and restart nginx
sudo ./use-case-1.sh && brew services restart nginx 

# Testing
# curl example.org
# should server from /var/www/example.org/html/index.html

# curl example.com
# should server from /var/www/example.com/html/index.html