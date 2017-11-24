function hello {
  echo "hello"
}

function ntmy {
  echo "Nice to meet you $1"
}

function listArgs {
  echo "Args: $@"
}

function addseq {
  local sum=0

  for element in $@
  do
    let sum=sum+$element
  done

  echo $sum
}
