user_directory=/home/trade/
jupyter_exe=${user_directory}.virtualenvs/j/bin/jupyter

# check if existing jupyter notebook instance already running; if multiple instances running, only take first
jupyter_url=$("$jupyter_exe" notebook list | grep -o 'http[:/0-9a-zA-Z?=]*\b' | head -1)
if [ ! -z "$jupyter_url" ]
then
  echo "Jupyter notebook session already started. Connecting to it..."
  xdg-open "$jupyter_url" &
else
  echo "Starting new Jupyter notebook session..."
  nohup "$jupyter_exe" notebook &
fi
