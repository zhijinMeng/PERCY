#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/robocupathome/workspace/eddy_code/src/msg_folder/play_motion/play_motion"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/robocupathome/workspace/eddy_code/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/robocupathome/workspace/eddy_code/install/lib/python3/dist-packages:/home/robocupathome/workspace/eddy_code/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/robocupathome/workspace/eddy_code/build" \
    "/usr/bin/python3" \
    "/home/robocupathome/workspace/eddy_code/src/msg_folder/play_motion/play_motion/setup.py" \
     \
    build --build-base "/home/robocupathome/workspace/eddy_code/build/msg_folder/play_motion/play_motion" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/robocupathome/workspace/eddy_code/install" --install-scripts="/home/robocupathome/workspace/eddy_code/install/bin"
