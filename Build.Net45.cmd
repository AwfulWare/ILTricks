@echo off
setlocal
call dNFx4env.cmd
ilasm /dll /pdb /out:Release\Net45\ILTricks.dll ILTricks.il
