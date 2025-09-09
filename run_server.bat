@echo off
cd /d  %~dp0
if not exist .venv (
  py -m venv .venv
)
set PY=.\.venv\Scripts\python.exe
if not exist %PY% (
  py -m venv .venv
)
%PY% -m pip install -q -r requirements.txt >nul 2>&1
%PY% src\app.py
pause
