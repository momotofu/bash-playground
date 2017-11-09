echo "start program"

if [[ $1 -eq 4 ]]; then
  echo "Thanks for entering $1"
elif [[ $1 -gt 3 ]]; then
  echo "$1 is a great number"
else
  echo "You entered: $1, not what I was looking for."
fi

echo "end program"
