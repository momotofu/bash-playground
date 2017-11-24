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

function plier {
  local sum_1=0

  for int in $@
  do
    if [[ $sum_1 -eq 0 ]]; then
      let sum_1=$int
    else
      let sum_1=$(($sum_1*$int))
    fi
  done

  echo $sum_1
}

function isEven {
  if [[ $(( $1 % 2 )) -eq 0 ]]; then
    echo 1
  else
    echo 0
  fi
}

function echoEvens {
  for number in $@
  do
    if [[ $(isEven $number) -eq 1 ]]; then
      echo $number
    fi
  done
}

function odd_percentage {
  local array=($@)
  local evens=$(echoEvens ${array[*]})
  local evensLen=${#evens[*]}
  local arrayLen=${#array[*]}
  echo "100 - $evensLen / $arrayLen * 100" | bc -l
}

function fib { 
    if [ $1 -le 0 ]; then
        echo 0
    elif [ $1 -eq 1 ]; then
        echo 1
    else
        echo $[`fib $[$1-2]` + `fib $[$1 - 1]`]
    fi

}
