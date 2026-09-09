@echo on
set "CONDA_SUBDIR=win-64"
if not exist C:\pygobject-tools\python.exe (
    "%RUNNER_TEMP%\micromamba.exe" create -y -p C:\pygobject-tools -c conda-forge conda-build conda-index
    if errorlevel 1 exit /b 1
)
call C:\pygobject-tools\condabin\conda.bat activate C:\pygobject-tools
if errorlevel 1 exit /b 1
python ci\build.py %1 %2
if errorlevel 1 exit /b 1
