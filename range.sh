function range {
  limit=$1

  while((limit >= 0)); do
    echo -n "$(($(($1-$limit))*-1)) " 
    limit=$limit-1
  done

  echo -e '\n'
}
