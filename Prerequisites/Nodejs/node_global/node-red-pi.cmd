@IF EXIST "%~dp0\/bin/bash.exe" (
  "%~dp0\/bin/bash.exe"  "%~dp0\node_modules\node-red\bin\node-red-pi" %*
) ELSE (
  @SETLOCAL
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  /bin/bash  "%~dp0\node_modules\node-red\bin\node-red-pi" %*
)