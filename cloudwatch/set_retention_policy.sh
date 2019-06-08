#!/bin/bash
groups=$(aws logs describe-log-groups | jq --compact-output '.logGroups[]')
for group in $groups; do
    group_name=$(echo $group | jq --raw-output '.logGroupName')
    aws logs put-retention-policy --log-group-name $group_name --retention $1
    echo $group_name retention policy has been updated to $1 day\(s\)
done
