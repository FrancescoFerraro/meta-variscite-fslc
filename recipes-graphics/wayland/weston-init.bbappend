# If using systemd, disable weston init.d script, as this will cause two instances of weston to run
INITSCRIPT_PARAMS = "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'stop 20 0 1 6 .', 'start 9 5 2 . stop 20 0 1 6 .', d)}"
