#!/bin/bash
printf "Script For Cloning Hals!\n"
printf "Cloning Audio Hals!\n"
cd hardware/qcom/audio-caf
rm -rf msm8916
git clone https://github.com/lettuce-pie/LOS-16-hals.git msm8916 -b audio-caf/msm8916
cd .. && cd .. && cd ..

printf "Cloning Media Hals!\n"
cd hardware/qcom/media-caf
rm -rf msm8916
git clone https://github.com/lettuce-pie/LOS-16-hals.git msm8916 -b media-caf/msm8916
cd .. && cd .. && cd ..

printf "Cloning Display Hals!\n"
cd hardware/qcom/display-caf
rm -rf msm8916
git clone https://github.com/lettuce-pie/LOS-16-hals.git msm8916 -b display-caf/msm8916
cd .. && cd .. && cd ..

printf "Cloning Audio Vendor!\n"
rm -rf vendor/qcom/opensource/audio
git clone https://github.com/LineageOS/android_vendor_qcom_opensource_audio.git vendor/qcom/opensource/audio -b lineage-16.0
cd .. && cd .. && cd ..
