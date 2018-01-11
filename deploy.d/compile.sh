#!/bin/sh
export cur_dir=$(cd "$(dirname "$0")"; pwd)
config=$cur_dir/$1
. $config
svn up $source_dir
cd $source_dir
mvn clean install -U
cd $cur_dir
