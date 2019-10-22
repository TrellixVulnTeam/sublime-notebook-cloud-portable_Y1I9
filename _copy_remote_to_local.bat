rclone copy "remote:notes" ./notes --fast-list --transfers=10 --checkers=10 --drive-chunk-size=32M --verbose
pause
