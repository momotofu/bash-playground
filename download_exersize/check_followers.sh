github_username='defunkt'
previous_followers=$(cat "./downloaded_files" | tail -n 1)
current_followers=$(curl "https://api.github.com/users/defunkt/followers")

echo $current_followers

# $(diff $previous_followers $current_followers)
# if (($?==1))
# then
#   touch $(date "%Y-%m-%d-%S-$github_username") downloaded_files/
# fi
