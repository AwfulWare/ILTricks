@echo off
setlocal
call dNFx4env.cmd
ilasm /dll /pdb /out:Release\Portable\ILTricks.dll ILTricks.Extern.il ILTricks.il
