function min_max {
  arr=( $(sort <(printf "%s\n" "$@")) )
  len=${#arr[*]}
  echo -n "${arr[0]} "
  echo -n ${arr[-1]}
  echo 
}
