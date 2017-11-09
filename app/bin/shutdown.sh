#!/bin/sh
dir=$(cd "$(dirname "$0")"; pwd)
. $dir/app.sh
shutdown
