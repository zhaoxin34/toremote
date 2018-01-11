#!/bin/bash
cur_dir=$(cd "$(dirname "$0")"; pwd)
app_name=apollo_qq_prod
source_dir=/data1/working_host/apollo_qq_dev
#svn up $source_dir
#cd $source_dir
#mvn clean install -U
cd $source_dir/target/
rm *.tar
cd $source_dir/target/apollo/
tar cvf $source_dir/target/apollo.tar ./*
cd $source_dir/target/
tar_name=apollo.`date +%Y%m%d%H%M%S`.tar
mv apollo.tar $tar_name
#cd $cur_dir

expect $cur_dir/deploy.expect $cur_dir $app_name $source_dir/target/$tar_name
