# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/overlay/dictionaries

# SuperUser
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.bl.superuser

# AOKP Packages
PRODUCT_PACKAGES += \
    AOKPtips \
    AppWidgetPicker \
    GooManager \
    LatinImeDictionaryPack \
    Microbes \
    PerformanceControl \
    ROMControl \
    Superuser \
    su \
    Torch

# bluelightning Packages
PRODUCT_PACKAGES += \
    bluelightning

# CM Packages
PRODUCT_PACKAGES += \
    audio_effects.conf \
    DSPManager \
    libcyanogen-dsp \
    LockClock

# PA Packages
PRODUCT_PACKAGES += \
    ParanoidPreferences

# bluelightning build.prop tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.amr.wideband=1 \
    ro.pa.family=$(OVERLAY_TARGET)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0 \
    persist.sys.root_access=3

PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/bluelightning/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# ParanoidAndroid Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/prebuilt/preferences/$(TARGET_PRODUCT)

# Allow device family to add overlays and use a same prop.conf
ifneq ($(OVERLAY_TARGET),)
    PRODUCT_PACKAGE_OVERLAYS += vendor/bluelightning/overlay/$(OVERLAY_TARGET)
    PA_CONF_SOURCE := $(OVERLAY_TARGET)
else
    PA_CONF_SOURCE := $(TARGET_PRODUCT)
endif

PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/$(PA_CONF_SOURCE).conf:system/etc/paranoid/properties.conf \
    vendor/bluelightning/prebuilt/$(PA_CONF_SOURCE).conf:system/etc/paranoid/backup.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/common/etc/init.local.rc:root/init.aokp.rc \
    vendor/bluelightning/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/bluelightning/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/bluelightning/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/bluelightning/prebuilt/common/bin/sysinit:system/bin/sysinit

# Onandroid script
PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/common/onandroid/onandroid:system/bin/onandroid

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CrayonRock.ogg \
    ro.config.notification_sound=Chirp.ogg \
    ro.config.alarm_alert=GoodMorning.ogg

# additional ringtones
PRODUCT_COPY_FILES += \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Acheron.ogg:system/media/audio/ringtones/Acheron.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Andromeda.ogg:system/media/audio/ringtones/Andromeda.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Aquila.ogg:system/media/audio/ringtones/Aquila.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/ArgoNavis.ogg:system/media/audio/ringtones/ArgoNavis.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/BentleyDubs.ogg:system/media/audio/ringtones/BentleyDubs.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Big_Easy.ogg:system/media/audio/ringtones/Big_Easy.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/BirdLoop.ogg:system/media/audio/ringtones/BirdLoop.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Bollywood.ogg:system/media/audio/ringtones/Bollywood.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Bongo.ogg:system/media/audio/ringtones/Bongo.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Bootes.ogg:system/media/audio/ringtones/Bootes.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Boxbeat.ogg:system/media/audio/ringtones/Boxbeat.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/BussaMove.ogg:system/media/audio/ringtones/BussaMove.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Cairo.ogg:system/media/audio/ringtones/Cairo.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Calypso_Steel.ogg:system/media/audio/ringtones/Calypso_Steel.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/CanisMajor.ogg:system/media/audio/ringtones/CanisMajor.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Carina.ogg:system/media/audio/ringtones/Carina.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Cassiopeia.ogg:system/media/audio/ringtones/Cassiopeia.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Centaurus.ogg:system/media/audio/ringtones/Centaurus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Champagne_Edition.ogg:system/media/audio/ringtones/Champagne_Edition.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Club_Cubano.ogg:system/media/audio/ringtones/Club_Cubano.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/CrayonRock.ogg:system/media/audio/ringtones/CrayonRock.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/CrazyDream.ogg:system/media/audio/ringtones/CrazyDream.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/CurveBall.ogg:system/media/audio/ringtones/CurveBall.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/CyanTone.ogg:system/media/audio/ringtones/CyanTone.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Cygnus.ogg:system/media/audio/ringtones/Cygnus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/DancinFool.ogg:system/media/audio/ringtones/DancinFool.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Ding.ogg:system/media/audio/ringtones/Ding.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Draco.ogg:system/media/audio/ringtones/Draco.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/DreamTheme.ogg:system/media/audio/ringtones/DreamTheme.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Eastern_Sky.ogg:system/media/audio/ringtones/Eastern_Sky.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Enter_the_Nexus.ogg:system/media/audio/ringtones/Nexus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Eridani.ogg:system/media/audio/ringtones/Enter_the_Nexus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/EtherShake.ogg:system/media/audio/ringtones/EtherShake.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/FriendlyGhost.ogg:system/media/audio/ringtones/FriendlyGhost.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Funk_Yall.ogg:system/media/audio/ringtones/Funk_Yall.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/GameOverGuitar.ogg:system/media/audio/ringtones/GameOverGuitar.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Gimme_Mo_Town.ogg:system/media/audio/ringtones/Gimme_Mo_Town.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Girtab.ogg:system/media/audio/ringtones/Girtab.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Glacial_Groove.ogg:system/media/audio/ringtones/Glacial_Groove.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Growl.ogg:system/media/audio/ringtones/Growl.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/HalfwayHome.ogg:system/media/audio/ringtones/HalfwayHome.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/House_of_house.ogg:system/media/audio/ringtones/House_of_house.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Hydra.ogg:system/media/audio/ringtones/Hydra.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/InsertCoin.ogg:system/media/audio/ringtones/InsertCoin.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Iridium.ogg:system/media/audio/ringtones/Iridium.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/LoopyLounge.ogg:system/media/audio/ringtones/LoopyLounge.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/LoveFlute.ogg:system/media/audio/ringtones/LoveFlute.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Lyra.ogg:system/media/audio/ringtones/Lyra.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Machina.ogg:system/media/audio/ringtones/Machina.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/MidEvilJaunt.ogg:system/media/audio/ringtones/MidEvilJaunt.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/MildlyAlarming.ogg:system/media/audio/ringtones/MildlyAlarming.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Nairobi.ogg:system/media/audio/ringtones/Nairobi.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Nasqueron.ogg:system/media/audio/ringtones/Nasqueron.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Nassau.ogg:system/media/audio/ringtones/Nassau.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/NewPlayer.ogg:system/media/audio/ringtones/NewPlayer.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Noises1.ogg:system/media/audio/ringtones/Noises1.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Noises2.ogg:system/media/audio/ringtones/Noises2.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Noises3.ogg:system/media/audio/ringtones/Noises3.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/No_Limits.ogg:system/media/audio/ringtones/No_Limits.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/OrganDub.ogg:system/media/audio/ringtones/OrganDub.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Orion.ogg:system/media/audio/ringtones/Orion.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Paradise_Island.ogg:system/media/audio/ringtones/Paradise_Island.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Pegasus.ogg:system/media/audio/ringtones/Pegasus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Perseus.ogg:system/media/audio/ringtones/Perseus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Playa.ogg:system/media/audio/ringtones/Playa.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Pyxis.ogg:system/media/audio/ringtones/Pyxis.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Revelation.ogg:system/media/audio/ringtones/Revelation.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Rigel.ogg:system/media/audio/ringtones/Rigel.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Road_Trip.ogg:system/media/audio/ringtones/Road_Trip.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/RomancingTheTone.ogg:system/media/audio/ringtones/RomancingTheTone.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Safari.ogg:system/media/audio/ringtones/Safari.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Savannah.ogg:system/media/audio/ringtones/Savannah.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Scarabaeus.ogg:system/media/audio/ringtones/Scarabaeus.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Sceptrum.ogg:system/media/audio/ringtones/Sceptrum.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Seville.ogg:system/media/audio/ringtones/Seville.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Shes_All_That.ogg:system/media/audio/ringtones/Shes_All_That.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/SilkyWay.ogg:system/media/audio/ringtones/SilkyWay.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Silmarillia.ogg:system/media/audio/ringtones/Silmarillia.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/SitarVsSitar.ogg:system/media/audio/ringtones/SitarVsSitar.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Solarium.ogg:system/media/audio/ringtones/Solarium.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Steppin_Out.ogg:system/media/audio/ringtones/Steppin_Out.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Terminated.ogg:system/media/audio/ringtones/Terminated.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Testudo.ogg:system/media/audio/ringtones/Testudo.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Themos.ogg:system/media/audio/ringtones/Themos.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Third_Eye.ogg:system/media/audio/ringtones/Third_Eye.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Thunderfoot.ogg:system/media/audio/ringtones/Thunderfoot.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/TwirlAway.ogg:system/media/audio/ringtones/TwirlAway.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/UrsaMinor.ogg:system/media/audio/ringtones/UrsaMinor.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/VeryAlarmed.ogg:system/media/audio/ringtones/VeryAlarmed.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Vespa.ogg:system/media/audio/ringtones/Vespa.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/World.ogg:system/media/audio/ringtones/World.ogg \
    vendor/bluelightning/prebuilt/common/media/audio/ringtones/Zeta.ogg:system/media/audio/ringtones/Zeta.ogg

# additional alarms

PRODUCT_COPY_FILES += \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/Beep.ogg:system/media/audio/alarms/Beep.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/ClassicAlarm.ogg:system/media/audio/alarms/ClassicAlarm.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/ClockBird.ogg:system/media/audio/alarms/ClockBird.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/Crow.ogg:system/media/audio/alarms/Crow.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/Dolphin.ogg:system/media/audio/alarms/Dolphin.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/GetUp.ogg:system/media/audio/alarms/GetUp.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/GoodLuck.ogg:system/media/audio/alarms/GoodLuck.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/GoodMorning.ogg:system/media/audio/alarms/GoodMorning.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/GoodNewDay.ogg:system/media/audio/alarms/GoodNewDay.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/MorningBird.ogg:system/media/audio/alarms/MorningBird.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/MorningSun.ogg:system/media/audio/alarms/MorningSun.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/MorningSunShine.ogg:system/media/audio/alarms/MorningSunShine.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/SunshineForest.ogg:system/media/audio/alarms/SunshineForest.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/alarms/TickTack.ogg:system/media/audio/alarms/TickTack.ogg 

# additional motifications

PRODUCT_COPY_FILES += \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/BlowBubble.ogg:system/media/audio/notifications/BlowBubble.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Bubble.ogg:system/media/audio/notifications/Bubble.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Burst.ogg:system/media/audio/notifications/Burst.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Chirp.ogg:system/media/audio/notifications/Chirp.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Clank.ogg:system/media/audio/notifications/Clank.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/CrystalPiano.ogg:system/media/audio/notifications/CrystalPiano.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/CrystalRing.ogg:system/media/audio/notifications/CrystalRing.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/DingDong.ogg:system/media/audio/notifications/DingDong.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/ElectronBeam.ogg:system/media/audio/notifications/ElectronBeam.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/FadeIn.ogg:system/media/audio/notifications/FadeIn.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/FadeOut.ogg:system/media/audio/notifications/FadeOut.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Flute.ogg:system/media/audio/notifications/Flute.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Flying.ogg:system/media/audio/notifications/Flying.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Frog.ogg:system/media/audio/notifications/Frog.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Grunting.ogg:system/media/audio/notifications/Grunting.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Guitar.ogg:system/media/audio/notifications/Guitar.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Harp.ogg:system/media/audio/notifications/Harp.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Howl.ogg:system/media/audio/notifications/Howl.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Knock.ogg:system/media/audio/notifications/Knock.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/MagicalDrug.ogg:system/media/audio/notifications/MagicalDrug.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Mystery.ogg:system/media/audio/notifications/Mystery.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/OpenBottle.ogg:system/media/audio/notifications/OpenBottle.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Piano.ogg:system/media/audio/notifications/Piano.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Searchlight.ogg:system/media/audio/notifications/Searchlight.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/notifications/Spring.ogg:system/media/audio/notifications/Spring.ogg \

#additional UI tones

PRODUCT_COPY_FILES += \
	vendor/bluelightning/prebuilt/common/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/MessageComplete.ogg:system/media/audio/ui/MessageComplete.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/MessageSending.ogg:system/media/audio/ui/MessageSending.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/MessageSendOut.ogg:system/media/audio/ui/MessageSendOut.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/MusicShake.ogg:system/media/audio/ui/MusicShake.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/SoundRecorderPause.ogg:system/media/audio/ui/SoundRecorderPause.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/SoundRecorderPlay.ogg:system/media/audio/ui/SoundRecorderPlay.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/SoundRecorderRewind.ogg:system/media/audio/ui/SoundRecorderRewind.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/SystemDelete.ogg:system/media/audio/ui/SystemDelete.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/SystemError.ogg:system/media/audio/ui/SystemError.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/SystemTurnOff.ogg:system/media/audio/ui/SystemTurnOff.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
	vendor/bluelightning/prebuilt/common/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg 

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/bluelightning/configs/common_versions.mk

# T-Mobile theme engine
include vendor/bluelightning/configs/themes_common.mk
