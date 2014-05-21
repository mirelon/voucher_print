for ARG in $*
do
  wget "https://chart.googleapis.com/chart?chs=100x100&cht=qr&chl="$ARG"&choe=UTF-8&chld=H|0" -O $ARG".png"
done

function join { local IFS="$1"; shift; echo "$*"; }
pdflatex "\def\myvar{`join , $*`}\input{main}"