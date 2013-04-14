#! /bin/bash
##installosu.sh

WINEPREFIX=~/.osu

echo "Installing required packages"
sudo apt-get install lib32-nvidia-utils wine winetricks
echo "Running \`echo lol\` to initialize prefix"
WINEPREFIX=${WINEPREFIX} WINEARCH=win32 wine echo lol 1>/dev/null 2>/dev/null
echo "Running winetricks"
WINEPREFIX=${WINEPREFIX} WINEARCH=win32 winetricks corefonts dotnet20 gdiplus d3dx9_36
echo "Downloading Osu"
mkdir "${WINEPREFIX}/drive_c/Program Files/osu"
wget "http://osu.ppy.sh/release/osume.exe" -O "${WINEPREFIX}/drive_c/Program Files/osu/osume.exe"
echo "#! /bin/bash
WINEPREFIX=${WINEPREFIX} WINEARCH=win32 wine \"C:\\Program Files\\osu\\osume.exe\"" > ~/osu
mkdir "${WINEPREFIX}/drive_c/Program Files/osu/Songs"
ln -s "${WINEPREFIX}/drive_c/Program Files/Songs" "${HOME}/.osusongs"
chmod +x ~/osu
echo "Osu installed. ~/osu to run"
