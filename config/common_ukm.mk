# UKM
PRODUCT_COPY_FILES += \
    vendor/cmremix/prebuilt/common/UKM/UKM:system/etc/init.d/UKM \
    vendor/cmremix/prebuilt/common/UKM/UKM.sh:system/addon.d/UKM.sh \
    vendor/cmremix/prebuilt/common/UKM/uci:system/xbin/uci \
    vendor/cmremix/prebuilt/common/UKM/busybox:system/UKM//busybox \
    vendor/cmremix/prebuilt/common/UKM/actions/boolean:system/UKM//actions/boolean \
    vendor/cmremix/prebuilt/common/UKM/actions/bracket-option:system/UKM//actions/bracket-option \
    vendor/cmremix/prebuilt/common/UKM/actions/buildprop:system/UKM//actions/buildprop \
    vendor/cmremix/prebuilt/common/UKM/actions/cpuboostibf:system/UKM//actions/cpuboostibf \
    vendor/cmremix/prebuilt/common/UKM/actions/cpuset:system/UKM//actions/cpuset \
    vendor/cmremix/prebuilt/common/UKM/actions/cpuvolt:system/UKM//actions/cpuvolt \
    vendor/cmremix/prebuilt/common/UKM/actions/devtools:system/UKM//actions/devtools \
    vendor/cmremix/prebuilt/common/UKM/actions/dropcaches:system/UKM//actions/dropcaches \
    vendor/cmremix/prebuilt/common/UKM/actions/gamma:system/UKM//actions/gamma \
    vendor/cmremix/prebuilt/common/UKM/actions/generic:system/UKM//actions/generic \
    vendor/cmremix/prebuilt/common/UKM/actions/gpuset:system/UKM//actions/gpuset \
    vendor/cmremix/prebuilt/common/UKM/actions/intellithermal:system/UKM//actions/intellithermal \
    vendor/cmremix/prebuilt/common/UKM/actions/ioset:system/UKM//actions/ioset \
    vendor/cmremix/prebuilt/common/UKM/actions/live:system/UKM//actions/live \
    vendor/cmremix/prebuilt/common/UKM/actions/lmk:system/UKM//actions/lmk \
    vendor/cmremix/prebuilt/common/UKM/actions/mpdboostfreq:system/UKM//actions/mpdboostfreq \
    vendor/cmremix/prebuilt/common/UKM/actions/numeric:system/UKM//actions/numeric \
    vendor/cmremix/prebuilt/common/UKM/actions/powersuspend:system/UKM//actions/powersuspend \
    vendor/cmremix/prebuilt/common/UKM/actions/printk:system/UKM//actions/printk \
    vendor/cmremix/prebuilt/common/UKM/actions/restorebackup:system/UKM//actions/restorebackup \
    vendor/cmremix/prebuilt/common/UKM/actions/serviceset:system/UKM//actions/serviceset \
    vendor/cmremix/prebuilt/common/UKM/actions/socset:system/UKM//actions/socset \
    vendor/cmremix/prebuilt/common/UKM/actions/soundfaux:system/UKM//actions/soundfaux \
    vendor/cmremix/prebuilt/common/UKM/actions/speakerfaux:system/UKM//actions/speakerfaux \
    vendor/cmremix/prebuilt/common/UKM/actions/sqlite:system/UKM//actions/sqlite \
    vendor/cmremix/prebuilt/common/UKM/actions/touch:system/UKM//actions/touch \
    vendor/cmremix/prebuilt/common/UKM/actions/voltage:system/UKM//actions/voltage \
    vendor/cmremix/prebuilt/common/UKM/actions/wake:system/UKM//actions/wake \
    vendor/cmremix/prebuilt/common/UKM/actions/zram:system/UKM//actions/zram \
    vendor/cmremix/prebuilt/common/UKM/debug/last_kmsg:system/UKM//debug/last_kmsg \
    vendor/cmremix/prebuilt/common/UKM/debug/pvs_bin:system/UKM//debug/pvs_bin \
    vendor/cmremix/prebuilt/common/UKM/debug/speed_bin:system/UKM//debug/speed_bin \
    vendor/cmremix/prebuilt/common/UKM/device/.device.sh:system/UKM//device/.device.sh \
    vendor/cmremix/prebuilt/common/UKM/device/bacon.sh:system/UKM//device/bacon.sh \
    vendor/cmremix/prebuilt/common/UKM/device/deb.sh:system/UKM//device/deb.sh \
    vendor/cmremix/prebuilt/common/UKM/device/hammerhead.sh:system/UKM//device/hammerhead.sh \
    vendor/cmremix/prebuilt/common/UKM/device/maguro.sh:system/UKM//device/maguro.sh \
    vendor/cmremix/prebuilt/common/UKM/device/mako.sh:system/UKM//device/mako.sh \
    vendor/cmremix/prebuilt/common/UKM/files/bck_prof:system/UKM//files/bck_prof \
    vendor/cmremix/prebuilt/common/UKM/files/dropcaches_prof:system/UKM//files/dropcaches_prof \
    vendor/cmremix/prebuilt/common/UKM/files/gamma_prof:system/UKM//files/gamma_prof \
    vendor/cmremix/prebuilt/common/UKM/files/gammafaux_prof:system/UKM//files/gammafaux_prof \
    vendor/cmremix/prebuilt/common/UKM/files/gammafranco_prof:system/UKM//files/gammafranco_prof \
    vendor/cmremix/prebuilt/common/UKM/files/gammafrancoN5_prof:system/UKM//files/gammafrancoN5_prof \
    vendor/cmremix/prebuilt/common/UKM/files/lmk_prof:system/UKM//files/lmk_prof \
    vendor/cmremix/prebuilt/common/UKM/files/sound_prof:system/UKM//files/sound_prof \
    vendor/cmremix/prebuilt/common/UKM/files/speaker_prof:system/UKM//files/speaker_prof \
    vendor/cmremix/prebuilt/common/UKM/files/volt_prof:system/UKM//files/volt_prof \
    vendor/cmremix/prebuilt/common/UKM/files/wake_prof:system/UKM//files/wake_prof \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate:system/UKM//config.json.generate \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.adv:system/UKM//config.json.generate.adv \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.bprop:system/UKM//config.json.generate.bprop \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.cpu:system/UKM//config.json.generate.cpu \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.cpuvolt:system/UKM//config.json.generate.cpuvolt \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.error:system/UKM//config.json.generate.error \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.gamma:system/UKM//config.json.generate.gamma \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.gpu:system/UKM//config.json.generate.gpu \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.hotplug:system/UKM//config.json.generate.hotplug \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.info:system/UKM//config.json.generate.info \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.io:system/UKM//config.json.generate.io \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.mem:system/UKM//config.json.generate.mem \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.misc:system/UKM//config.json.generate.misc \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.profile:system/UKM//config.json.generate.profile \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.sound:system/UKM//config.json.generate.sound \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.speaker:system/UKM//config.json.generate.speaker \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.status:system/UKM//config.json.generate.status \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.thermal:system/UKM//config.json.generate.thermal \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.tools:system/UKM//config.json.generate.tools \
    vendor/cmremix/prebuilt/common/UKM/config.json.generate.wake:system/UKM//config.json.generate.wake \
    vendor/cmremix/prebuilt/common/UKM/uci:system/UKM//uci
