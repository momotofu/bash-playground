plagues=(blood frogs lice flies sickness boils hail locusts darkness death)

if [[ $1 =~ 'a' ]]; then
  let $1="*"
fi

echo ${plagues[$1]}
