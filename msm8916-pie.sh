#!/bin/bash
printf "Script For Cloning Hals!\n"
printf "Cloning Audio Hals!\n"
cd hardware/qcom/audio-caf
rm -rf msm8916
git clone https://github.com/lettuce-pie/LOS-16-hals.git msm8916 -b audio-caf/msm8916


printf "Cloning Media Hals!\n"
cd hardware/qcom/media-caf
rm -rf msm8916
git clone https://github.com/lettuce-pie/LOS-16-hals.git msm8916 -b media-caf/msm8916


printf "Cloning Display Hals!\n"
cd hardware/qcom/display-caf
rm -rf msm8916
git clone https://github.com/lettuce-pie/LOS-16-hals.git msm8916 -b display-caf/msm8916
