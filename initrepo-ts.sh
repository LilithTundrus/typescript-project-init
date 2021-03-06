#!/bin/bash
GREEN='\033[0;32m'
# No color
NC='\033[0m'

printf "\nNode.js Repository init Script by Lilith Tundrus v1.0.0\n"

# Create useful directories
printf "\nCreating Directories...\n"
mkdir -v logs
mkdir -v lib
mkdir -v src
mkdir -v build

# Check for Git
printf "\nChecking for Git...\n"
command -v git  2>&1 || { echo >&2 "I require Git but it's not installed.  Aborting."; exit 1; }
printf "${GREEN}Git exists!${NC}\n"

# Check for NPM
printf "\nChecking for NPM...\n"
command -v npm  2>&1 || { echo >&2 "I require NPM but it's not installed.  Aborting."; exit 1; }
printf "${GREEN}NPM exists!${NC}\n"

# Check for tsc
printf "\nChecking for tsc...\n"
command -v tsc  2>&1 || { echo >&2 "I require tsc but it's not installed.  Aborting."; exit 1; }
printf "${GREEN}tsc exists!${NC}\n"

# Create our files (README, etc)
printf "\n\nWriting Initial files..."
touch README.MD
touch LICENSE
touch .gitignore
touch index.ts
echo "# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Directory for instrumented libs generated by jscoverage/JSCover
lib-cov

# Coverage directory used by tools like istanbul
coverage

# nyc test coverage
.nyc_output

# Grunt intermediate storage (http://gruntjs.com/creating-plugins#storing-task-files)
.grunt

# Bower dependency directory (https://bower.io/)
bower_components

# node-waf configuration
.lock-wscript

# Compiled binary addons (https://nodejs.org/api/addons.html)
build/Release

# Dependency directories
node_modules/
jspm_packages/

# Typescript v1 declaration files
typings/

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env

# next.js build output
.next" > .gitignore
# Write PWD name to the README file by default 
echo "# ${PWD##*/}" > README.MD

# Run our repo inits
printf "\n\n"
git init
git checkout -b master
git checkout master
printf "\n\n"

# tsc init
tsc --init

# npm init
npm init

printf "\n\n${GREEN}Done!${NC}\n"