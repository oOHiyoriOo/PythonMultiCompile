@echo off

set anaconda_path=C:\Anaconda\
set "envs=py_36 py_37 py_38 py_39 py_310"
set "pyfile=CHANGEME.py"

if not exist ".\py_bytecode" mkdir .\py_bytecode

for %%s in (%envs%) do (
  call %anaconda_path%Scripts\activate %%s
  echo Compiling with:
  python -V
  python -c "import sys;import py_compile;py_compile.compile('%pyfile%','./py_bytecode/'+str(str(sys.version).split(' ')[0])+'_%pyfile%.pyc');"
  echo ===========================================
  echo/
)