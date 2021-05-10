#!/bin/bash
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
IP=`ifconfig|awk '/[0-9]{2}\.[1]\.[0-9]{1,3}\.[0-9]{1,3}/{print $2}'`