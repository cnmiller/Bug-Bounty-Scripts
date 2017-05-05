# Bug Bounty Scripts
A collection of quick, useful scripts that I have thrown together during my various bug bounty hunting expeditions. If you are a bug bounty hunter, these may or may not be particularly useful to you. My hope is that they can at least provide some inspiration for new recon, automation (etc.) techniques. These scripts may also have some usability in more traditional penetration tests.

I hope to provide some additional documentation for how I use these scripts soon. For now, the comments will have to do. Enjoy!

**Disclaimer:** I am not a developer and these scripts are not going to be pretty. They also were not necessarily designed with usability/ readability/ efficiency in mind. Use at your own risk!

# Scripts
This section describes each of scripts in this repo, including brief descriptions of their capabilities and usages.

## update_subdomain_wordlist.sh
Usage: ./update_subdomain_wordlist.sh (sorry, no command line arguments here)

This script is designed to be run in a directory containing a subdomain wordlist (subdomain_wordlist.txt in this case) used for bruteforcing subdomains. A subdirectory (/subdomains) should contain .lst files with previously identified subdomains. This is particularly useful if your subdomain *.lst files are generated using a tool that does some advanced DNS recon (I personally recommend Enumall.py: https://github.com/jhaddix/domain)
