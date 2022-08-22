# PythonMultiCompile
Compile python to bytecode for multiple version using Anaconda.

you can use this script(s) with installed anaconda to "compile" a python file to bytecode for multiple versions at once.
1. Change the anaconda Path to you anaconda Main Folder.
2. Change the envs to enviroments that you have installed.
3. change the CHANGEME.py to oyu file.

the start of the script should look like this:

```bat
set anaconda_path=C:\PATH\TO\Anaconda\
set "envs=py_36 py_37 py_38 py_39 py_310"
set "pyfile=byte_me.py"

...
```
after that, just run it using cmd or double click it and all you should see a folder named "py_bytecode" with you pyc files and there coresponding version.
