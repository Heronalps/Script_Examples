#!/bin/bash
groups=$(aws logs describe-log-groups --log-group-name-prefix "/aws/lambda/$1"| jq --compact-output '.logGroups[]')
for group in $groups; do
    group_name=$(echo $group | jq --raw-output '.logGroupName')
    aws logs delete-log-group --log-group-name $group_name
    echo $group_name has been deleted
done


