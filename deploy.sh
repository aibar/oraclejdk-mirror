#!/bin/sh

Type='jdk' Arc='x64' ./deploy.sh
Type='jdk' Arc='x32' ./deploy.sh
Type='jre' Arc='x64' ./deploy.sh
Type='jre' Arc='x32' ./deploy.sh