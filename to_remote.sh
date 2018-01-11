#!/bin/bash
cur_dir=$(cd "$(dirname "$0")"; pwd)
app_name=$1
app_name=${app_name##*/}
command=$2

expect $cur_dir/remote.expect $cur_dir $app_name $command
