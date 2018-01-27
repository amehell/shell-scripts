FILE=$1
LINEAS=$(wc -l < llst)
echo "numero de lineas: $LINEAS"
for ((N=1;N<=$LINEAS;N++));
  do
    PATRON=$(head -$N llst | tail -1)
  #  echo "Buscando .. $PATRON"
    grep -n $PATRON $FILE
  done
  echo "fin"
