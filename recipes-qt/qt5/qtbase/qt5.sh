#!/bin/sh
export QT_QPA_EGLFS_ALWAYS_SET_MODE=1
export QT_QPA_EGLFS_NO_LIBINPUT=1
export QT_QPA_EGLFS_INTEGRATION=eglfs_kms
export QT_QPA_EGLFS_TSLIB=1
export QT_QPA_EGLFS_KMS_CONFIG=/usr/share/qt5/eglfs-kms-config.json
