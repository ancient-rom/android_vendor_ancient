# Copyright (C) 2018 ArrowOS
# Copyright (C) 2018 The Superior OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Custom Ancient packages
PRODUCT_PACKAGES += \
    LatinIME \
    Lawnchair \
    LawnConf \
    SoundPickerPrebuilt \
    Snap \
    Calendar \
    LiveWallpapers \
    LiveWallpapersPicker \
    WallpaperPickerGooglePrebuilt \
    Stk \
    Recorder \
    Music \
    MintBrowser \
    SystemUpdates \
    WeatherClient \
    Contact \
    Gboard

# Themes Dark
PRODUCT_PACKAGES += \
    SettingsDarkTheme \
    SystemDarkTheme \
    SystemUIDarkTheme \
    ContactsThemeDark \
    DialerThemeDark \
    FilesThemeDark \
    UpdaterDark

# Themes Black
PRODUCT_PACKAGES += \
    SettingsBlackTheme \
    SystemBlackTheme \
    SystemUIBlackTheme \
    ContactsThemeBlack \
    DialerThemeBlack \
    FilesThemeBlack \
    UpdaterBlack

# Accents
PRODUCT_PACKAGES += \
    AmberAccent \
    BlackAccent \
    BlueAccent \
    BlueGreyAccent \
    BrownAccent \
    CyanAccent \
    CandyRedAccent \
    DeepOrangeAccent \
    DeepPurpleAccent \
    ExtendedGreenAccent \
    GreenAccent \
    GreyAccent \
    IndigoAccent \
    JadeGreenAccent \
    LightBlueAccent \
    LightGreenAccent \
    LimeAccent \
    OrangeAccent \
    PaleBlueAccent \
    PaleRedAccent \
    PinkAccent \
    PurpleAccent \
    RedAccent \
    TealAccent \
    YellowAccent \
    WhiteAccent

# Extra tools
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    tune2fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    7z \
    bzip2 \
    curl \
    lib7z \
    powertop \
    pigz \
    tinymix \
    unrar \
    unzip \
    zip \
    vim \
    bash

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

 # rsync
PRODUCT_PACKAGES += \
    rsync

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Needed by some RILs and for some Gapps packages
PRODUCT_PACKAGES += \
    librsjni \
    libprotobuf-cpp-full

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# QS header styles
PRODUCT_PACKAGES += \
    QSHeaderBlack \
    QSHeaderGrey \
    QSHeaderLightGrey \
    QSHeaderAccent \
    QSHeaderTransparent

# QS tile styles
PRODUCT_PACKAGES += \
    QStileDefault \
    QStileCircleTrim \
    QStileCircleDualTone \
    QStileCircleGradient \
    QStileDualToneCircle \
    QStileInkdrop \
    QStileCookie \
    QStileMountain \
    QStileNinja \
    QStilePokesign \
    QStileSquircle \
    QStileSquircleTrim \
    QStileTeardrop \
    QStileWavey

#Font package
PRODUCT_PACKAGES += \
    Custom-Fonts
