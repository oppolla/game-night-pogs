@echo off
setlocal EnableDelayedExpansion
set /A count=1
for %%G in (*.png) do (
    set "filename=%%G"
    set "newname=slammer!count!!filename:~ -4!"
    ren "!filename!" "!newname!"
    set /A count+=1
)