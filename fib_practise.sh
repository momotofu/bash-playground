function fib_p {
  # declare variables
  a=1
  b=1
  c=0

  # print start of the series
  echo -n "$c "
  echo -n "$a "
  echo -n "$b "

  # perform fib logic
  while [[ $c -lt $1 ]]; do
    c=$(($a+$b))
    a=$b  # keep track of history
    b=$c

    # print out next string in the sequence
    echo -n "$c "
  done

  # print a new line using the execute flag
  echo -e '\n'

  return 0
}
