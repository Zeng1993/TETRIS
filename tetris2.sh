TETRIS
======

TETRIS
#!/bin/bash
SigA=20
SigS=21
SigD=22
SigW=23
sig=0
function Register_Signal()
{
trap "sig=$SigA;" $SigA
trap "sig=$SigS;" $SigS
trap "sig=$SigD;" $SigD
trap "sig=$SigW;" $SigW
}
function Recive_Signal()
{
Register_Signal
while true
do
	sigThis=$sig
	case "$sigThis" in
	   "$SigA")
		echo "A"
		sig=0
		;;
	   "$SigS")
		echo "s"
		sig=0
		;;
}
