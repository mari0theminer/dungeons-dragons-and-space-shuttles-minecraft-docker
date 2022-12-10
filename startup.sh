#/bin/bash
env |grep -i EULA
if [ "$EULA" != "true" ]
then
  echo "PLS set the env var $EULA to true"
  exit 1
fi

sed -i "s/false/$EULA/g" eula.txt
echo $OP > ops.txt
java -Xms${Xms}M -Xmx${Xmx}M -jar forge-1.12.2-14.23.5.2847-universal.jar nogui
