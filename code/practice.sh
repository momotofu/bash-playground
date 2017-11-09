if [[ $1 =~ ^[A-Z] ]]; then
  echo "How proper."
fi

if [[ $2 % 2 -eq 0 ]]; then
  echo "Your number is even."
else 
  echo "Your number is odd."
fi


