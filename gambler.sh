#! /bin/bash
echo "welcome to Gambling Simulation problem"
STAKE=100
Bet=1
days=30
percent=50
winamount=0
lossamount=0
win=0
loss=0
Winning=$(( $STAKE+$(($STAKE * $percent / 100 )) ))
  echo Winning=$Winning
Lossing=$(($STAKE * $percent / 100 ))
 echo Lossing=$Lossing
Totalinvestment=$(( $STAKE * $days ))
   echo totalinvestment=$Totalinvestment
for (( day=1; day<=$days; day++ ))
do
  while [[ $STAKE -gt $Lossing && $STAKE -lt $Winning ]]
    do
        bettingtoss=$(( RANDOM%2 ))
    if [[ $bettingtoss -eq 1 ]]
    then
      STAKE=$(($STAKE+$Bet))
    else
      STAKE=$(($STAKE-$Bet))
    fi
  done
  if [[ $STAKE -eq 150 ]]
  then
    winamount=$(( $winamount+$STAKE ))
    win=$(($win+1))
  else
    lossamount=$(( $lossamount+$STAKE ))
    loss=$(($loss+1))
  fi
  echo "amount for the day:$day is $STAKE"
  amount=$(($amount+$STAKE))
done
echo "total amount win after a month:" $winamount
echo "total amount loss after a month:" $lossamount
echo "total amount gain after a month:" $amount
if [[ $Totalinvestment -gt $amount ]]
 then
   echo "loss by $(( $TOtalinvestment-$amount ))"
 else if [[ $Totalinvestment -eq $amount ]]
   then
      echo "No amount was win or loss"
   else
      echo "won by $(( $amount-$Totalinvestment ))"
  fi
fi
echo "number of luckiest days of gambler is:"$win
echo "number of unluckiest days of gambler is:"$loss
if [[ $win -gt $loss ]]
 then
        echo "continue the game"
else
        echo "quit the game"
fi

