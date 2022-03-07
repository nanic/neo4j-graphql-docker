#!/bin/sh

get_latest_release() {
  resp=`curl --silent "https://api.github.com/repos/$1/releases/latest"`
  version=`echo "$resp" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'`
  download_url=`echo "$resp" | grep '"browser_download_url":' | sed -E 's/.*"([^"]+)".*/\1/'`
  #echo "$version"
  echo "$download_url"
}

# Usage
get_latest_release "neo4j-graphql/neo4j-graphql"
