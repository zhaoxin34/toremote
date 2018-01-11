#!/bin/sh
export cur_dir=$(cd "$(dirname "$0")"; pwd) 
config=$cur_dir/$1
. $config 
cd $source_dir/target/apollo
tar cf $cur_dir/${app_name}.tar * --exclude-from $cur_dir/excludes.files

cd $cur_dir
tar_name=${app_name}.`date +%Y%m%d%H%M%S`.tar
mv ${app_name}.tar $tar_name
echo $tar_name
