#!/bin/bash

printf "Select android version!\n"
printf "1:8.1\n2:9.1\n"
read flavour
case $flavour in
	1)
	   printf "Syncing all the necessary trees for building Oreo.\n"
	   git clone https://github.com/PainKiller3/device_asus_msm8916-common.git device/asus/msm8916-common -b 8.1
    	   git clone https://github.com/PainKiller3/device_asus_Z010D device/asus/Z010D -b 8.1
    	   git clone https://github.com/PainKiller3/vendor_Z010D.git vendor/asus -b 8.1
     	   git clone https://github.com/ShadowReaper1/android_kernel_asus_msm8916-1 kernel/asus/msm8916 -b lineage-15.1-2
	   printf "\nSource Synned."
	   ;;
	2)
           printf "Syncing all the necessary trees for building Pie.\n"
           git clone https://github.com/PainKiller3/device_asus_msm8916-common.git device/asus/msm8916-common -b 9.0
    	   git clone https://github.com/PainKiller3/device_asus_Z010D device/asus/Z010D -b 9.0
    	   git clone https://github.com/PainKiller3/vendor_Z010D.git vendor/asus -b 9.0
     	   git clone https://github.com/ShadowReaper1/android_kernel_asus_msm8916.git kernel/asus/msm8916 -b 1
           printf "Source Synned."
           ;;
        
	*)
	   printf "\nFix Fking error kthxbye"
	   ;;
esac
