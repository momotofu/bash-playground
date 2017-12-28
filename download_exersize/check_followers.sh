github_username='defunkt'
file_path="./downloaded_files/"
previous_followers=$(cat "$file_path$(ls $file_path | tail -n 1)")
current_followers=$(curl "https://api.github.com/users/$github_username/followers")

if [ "$current_followers" = "$previous_followers" ]; then
  echo "no change"
else
  echo "$current_followers" >> "$file_path$(date "+%Y-%m-%d-%S").txt"
fi
