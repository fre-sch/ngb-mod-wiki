msg %USERNAME% Edit this bat file and set unreal_path, steamlibrary_path. Then remove first two lines.
exit /b 0

set unreal_path=D:\EpicGames\UE_4.16
set steamlibrary_path=D:\SteamLibrary
set mod_path=D:\Mods\NewGundamBreaker
set mod_name=mod00

%unreal_path%\Engine\Binaries\Win64\UnrealPak.exe %mod_path%\%mod_name%.pak -Create=%mod_path%\%mod_name%.txt -compressed
%unreal_path%\Engine\Binaries\Win64\UnrealPak.exe %mod_path%\%mod_name%.pak -List
copy /b/y %mod_path%\%mod_name%.pak %steamlibrary_path%\SteamApps\common\BGMC\NewGundamBreaker\Content\Paks
