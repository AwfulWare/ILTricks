@echo off
call Build.Net45.cmd
powershell -ExecutionPolicy Bypass -File NoAggressiveInlining.ps1
call Build.Net20.cmd
call Build.Portable.cmd
