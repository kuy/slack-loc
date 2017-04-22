#! /bin/sh
# http://qiita.com/richmikan@github/items/fe1af82fe145ae27d53e

case $# in
  0) cat -                   ;;
  *) for file in "$@"; do
       case "$file" in
         -)  :             ;;
         /*) :             ;;
         *)  file="./$file";;
       esac
       cat "$file"
     done                    ;;
esac |
exec env - awk '
BEGIN {
  # --- prepare
  LF = sprintf("\n");
  OFS = "";
  ORS = "";
  # --- prepare encoding
  for(i= 0;i<256;i++){c2p[sprintf("%c",i)]=sprintf("%%%02X",i);}
  c2p[" "]="+";
  for(i=48;i< 58;i++){c2p[sprintf("%c",i)]=sprintf("%c",i);    }
  for(i=65;i< 91;i++){c2p[sprintf("%c",i)]=sprintf("%c",i);    }
  for(i=97;i<123;i++){c2p[sprintf("%c",i)]=sprintf("%c",i);    }
  c2p["-"]="-"; c2p["."]="."; c2p["_"]="_"; c2p["~"]="~";
  # --- encode
  while (getline line) {
    for (i=1; i<=length(line); i++) {
      print c2p[substr(line,i,1)];
    }
    print LF;
  }
}'
