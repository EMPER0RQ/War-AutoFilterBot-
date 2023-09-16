if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/EMPER0RQ/War-AutoFilterBot- /War-AutoFilterBot-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /War-AutoFilterBot-
fi
cd /War-AutoFilterBot-
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
