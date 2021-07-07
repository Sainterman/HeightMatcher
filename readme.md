# Height Matcher
Is a module created in ruby which allows users to find NBA players by their height in inches.

## Ruby version:
Instal ruby v3.0.0
On Debian/ubuntu you can use the following snippet which uses apt package manager
$ sudo apt-get install ruby-full

I recommend using RVM https://rvm.io/ or rbenv to manage different versions of ruby


## Dependencies
The script uses the package 'uri' and 'net/http' to create HTTP request to https://mach-eight.uc.r.appspot.com/, It also uses 'JSON' package to load JSON into ruby hashes