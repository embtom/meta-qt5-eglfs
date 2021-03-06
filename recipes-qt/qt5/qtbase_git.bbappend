FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
DEPENDS_append = " tslib mesa libdrm"
RDEPENDS_${PN}_append = " tslib-calibrate"

SRC_URI_append = "file://qt5.sh \
                  file://eglfs-kms-config.json"

PACKAGECONFIG_RELEASE = "release"
PACKAGECONFIG_FONTS = "fontconfig"
PACKAGECONFIG_DEFAULT_append = " accessibility udev evdev libinput eglfs gles2 gbm kms tslib"
PACKAGECONFIG_DEFAULT_remove = " tests"

QT_CONFIG_FLAGS_append = " -tslib -qpa eglfs"


#install environment variables
do_install_append() {
    install -d ${D}${sysconfdir}/profile.d/
    install -m 0755 ${WORKDIR}/qt5.sh ${D}${sysconfdir}/profile.d/
    install -d ${D}${datadir}/qt5
    install -m 0755 ${WORKDIR}/eglfs-kms-config.json ${D}${datadir}/qt5/
}

FILES_${PN} += "${datadir}/qt5"
#-qreal float