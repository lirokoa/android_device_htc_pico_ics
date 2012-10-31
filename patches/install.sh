# This script installs automatically all needed patches for pico. #
# Concept by Rashed97,reviewed by Bytecode #
# Modified to work for pico #

echo "Obtaining build directory..."
rootdirectory="~/cm10"
cd packages/apps/Gallery2
echo "Applying Gallery2 patches..."
git am $rootdirectory/device/htc/pico/patches/packages_apps_Gallery2/0001-wrap-LegacyCamera-into-Gallery2-1-2.patch
cd $rootdirectory
cd packages/apps/LegacyCamera
echo "Applying LegacyCamera patches..."
git am $rootdirectory/device/htc/pico/patches/packages_apps_LegacyCamera/0001-load-correct-library-for-panorama.patch
git am $rootdirectory/device/htc/pico/patches/packages_apps_LegacyCamera/0002-wrap-LegacyCamera-into-Gallery2-2-2.patch
git am $rootdirectory/device/htc/pico/patches/packages_apps_LegacyCamera/0003-add-DisableCameraReceiver-to-LegacyCamera.patch
cd $rootdirectory
cd build
echo "Applying build patches..."
git am $rootdirectory/device/htc/pico/patches/build/0001-remove-tts-and-videoeditor.patch
cd $rootdirectory
echo "Changing to build directory.."


