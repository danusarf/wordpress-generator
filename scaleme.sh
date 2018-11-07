#!/bin/bash

kubectl scale --replicas=$1 deployment wp-wordpress