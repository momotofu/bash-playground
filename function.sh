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
	# set up properties
	local c=0
	local a=1
	local b=1
	
	# get limit from user
	read -p "Enter limit of fibonacci series: " n
	
	# echo start of the series
  echo -n "$c"
	echo -n "$a "
	echo -n "$b "
	
	#logic
	while((c<n))
	do
		c=$((a+b))
		echo -n "$c "
		a=$b
		b=$c
	done
	echo -e "\n"
}

function printName {
  read -p "What is your name? " name
  echo "Nice to meet you $name"
}
