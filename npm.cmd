@echo off
for /d %%i in (BOT\*) do (
  if exist "%%i\node_modules" (
    echo "Skipping %%i, node_modules already exists."
  ) else (
    echo "Running npm install in %%i"
    cd "%%i" && npm install
  )
)
