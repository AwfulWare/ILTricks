@echo off
call Build.Net45.cmd
powershell -ep - "sc 'ILTricks.NoAggressiveInlining.il' (gc 'ILTricks.il').Replace('aggressiveinlining', '')"
call Build.Portable.cmd
call Build.Net35.cmd
powershell -ep - "sc 'ILTricks.NoLinq.il' (gc 'ILTricks.NoAggressiveInlining.il').Replace('[System.Core]', '')"
call Build.Net20.cmd
