# Height Matcher
Is a module created in ruby which allows users to find NBA players by their height in inches from data downloaded from https://mach-eight.uc.r.appspot.com/

## Ruby version:
Instal ruby v3.0.0
On Debian/ubuntu you can use the following snippet which uses apt package manager
$ sudo apt-get install ruby-full

I recommend using RVM https://rvm.io/ or rbenv to manage different versions of ruby


## Dependencies
The script uses the package 'uri' and 'net/http' to create HTTP request to https://mach-eight.uc.r.appspot.com/, It also uses 'JSON' package to load JSON into ruby hashes
These moduels are part of ruby's standard library
## How to use:

On your bash terminal, run the following command

$ ruby height.rb

This will prompt the user for an integer value, and will display the results line by line, if no players match the given height the program returns "No matches found"

To run the tests, run the following command on your terminal

$ ruby test_heightmatcher.rb