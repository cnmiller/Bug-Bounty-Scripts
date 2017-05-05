# #!/usr/bin/env bash
# 
# Written by Chase Miller (n0rb3r7) - 5 May 2017
#
# Usage: ./update_subdomain_wordlist.sh (sorry, no command line arguments here)
# 
# This script is designed to be run in a directory containing a subdomain 
# wordlist (subdomain_wordlist.txt in this case) used for bruteforcing 
# subdomains. A subdirectory (/subdomains) should contain .lst files with 
# previously identified subdomains. This is particularly useful if your 
# subdomain *.lst files are generated using a tool that does some advanced DNS
# recon (I personally recommend: https://github.com/jhaddix/domain)

# Get length of original subdomain wordlist
old_length=$(cat subdomain_wordlist.txt | wc -l)

# Get master list of previously identified subdomains (from /subdomains dir)
find ./subdomains/ -name '*.lst' -exec cat {} \; > master_subdomains.txt

# Split each line of master_subdomains.txt at the first "." & write to cleaned 
cut -f1 -d"." master_subdomains.txt > cleaned.txt
rm master_subdomains.txt 

# Append new subdomain strings to existing subdomain_wordlist.txt
cat cleaned.txt >> subdomain_wordlist.txt
rm cleaned.txt # Comment out to save cleaned.txt

# Sort subdomain_wordlist.txt and remove any duplicates
sort -u subdomain_wordlist.txt -o subdomain_wordlist.txt

# Get updated number of lines because... well... it's interesting!
new_length=$(cat subdomain_wordlist.txt | wc -l)
echo "Added $(($new_length-$old_length)) Lines to subdomains_wordlist.txt"

# Now go out and find those subdomains!
# Cheers!