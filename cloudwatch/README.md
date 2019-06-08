### CloudWatch Scripts

#### clean log group

* The first argument is the prefix of group name

Example: Clean log groups whose names start with "container"

``` sh clean_log_groups.sh container ```


#### set retention policy

* The first argument is the number of retention day

Example: Set retention day as 1 for all log groups

``` sh set_retention_policy.sh 1 ```
