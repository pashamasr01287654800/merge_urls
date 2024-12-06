#!/bin/bash

echo "Enter the phishing URL here (with http or https):"
read phish_url

echo "Enter the original URL here (with http or https):"
read orig_url

# Remove trailing slash from original URL if exists
orig_url=$(echo $orig_url | sed 's/\/$//')

# Remove protocol from phishing URL
phish_url=$(echo $phish_url | sed 's/http[s]*:\/\///')

merged_url="$orig_url-y@$phish_url"

echo -e "The merged URL is: \033[32m$merged_url\033[0m"