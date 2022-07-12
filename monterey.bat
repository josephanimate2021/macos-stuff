@echo off
:: you need to have an os name saved as Macos Monterey in order for this file to work correctly. you also need to have virtualbox.
if exist "C:\Program Files\Oracle\VirtualBox\" (
cd "C:\Program Files\Oracle\VirtualBox\"
) else (
echo ERROR: Path is none existant. && goto exitnow
)


VBoxManage.exe modifyvm "Macos Monterey" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "Macos Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "Macos Monterey" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "Macos Monterey" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "Macos Monterey" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "Macos Monterey" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
echo All settings are changed sucessfully.
goto exitnow


:exitnow
pause & exit
