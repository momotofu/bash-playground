if [[ $1 =~ ^[A-Z] ]]; then
  echo "How proper."
fi

if [[ $(($2 % 2)) -eq 0 ]]; then
  echo "Your number is even."
else 
  echo "Your number is odd."
fi

if [[ $3 =~ '^[0-9]+' && $4 =~ '^[0-9]+' ]]; then
  echo [[ $3 + $4 ]]
else
  echo $3 $4
fi

if [[ "$(date +%a)" =~ "Thu" ]]; then
  echo "Yay it's Thursday!"
fi

