count=3

while [[ $count -gt -3 ]]
do
  echo "count is equal to $count"
  let count=$count-1
done
