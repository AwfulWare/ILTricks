@echo off
call Build.Portable.cmd
powershell -ep - "sc 'ILTricks.NoAggressiveInlining.il' (gc 'ILTricks.il').Replace(' aggressiveinlining', '')"
call Build.Net35.cmd
powershell -ep - "sc 'ILTricks.NoLinq.il' (gc 'ILTricks.NoAggressiveInlining.il').Replace('[System.Core]', '')"
call Build.Net20.cmd
