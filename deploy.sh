#!/bin/bash

aws s3 cp . s3://apache-portal.com/ --recursive --exclude "*" --include "*.html" --include "*.svg" --include="*.css"
aws s3api put-bucket-website --bucket apache-portal.com --website-configuration file://site.json
aws s3api put-bucket-website --bucket www.apache-portal.com --website-configuration file://www-redirect.json
