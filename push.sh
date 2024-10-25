adb root
adb push busybox /data/local/tmp
adb push gdbserver /data/local/tmp
adb push *.sh /data/local/tmp
adb shell "chmod +x /data/local/tmp/*"
adb forward tcp:1337 tcp:1337
adb reverse tcp:8000 tcp:8000
adb install uv4-release-signed-A12.apk