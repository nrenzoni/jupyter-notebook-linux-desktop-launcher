Installation steps

* change ```jupyter_exe``` variable to reference the jupyter python script. (I have jupyter installed in a local python venv).

* ```cp launch_jupyter.sh /usr/local/bin``` (or another directory in path variable)

* Change ```Path``` in Jupyter_Notebook.desktop to desired working directory of Jupyter. 

* ```cp Jupyter_Notebook.desktop ~/.local/share/applications```

* A desktop entry should now appear in the Menu of your linux distro!

---

Further customizations / ideas:

* Change .desktop launcher to terminal type, with option to select which Jupyter instance to connect to (E.g. one of multiple local instances and remote instances).
