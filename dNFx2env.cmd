@echo off
pushd %windir%\Microsoft.NET\Framework\v2.0.*
path %path%;%cd%
popd