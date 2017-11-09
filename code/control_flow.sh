echo "start program"

if [[ $1 -eq 3 ]] && [[ $1 -lt 7 ]]; then
  echo "Thanks for entering $1"
elif [[ $1 =~ 'Jimmy' ]] || [[ $1 =~ 'Roger' ]] || [[ $1 =~ 'Chris' ]]; then
  echo "$1 is a great name" 
else
  echo "You entered: $1, not what I was looking for."
fi

echo "end program"
