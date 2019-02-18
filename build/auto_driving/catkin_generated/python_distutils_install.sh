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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/src/auto_driving"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/install/lib/python2.7/dist-packages:/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build" \
    "/usr/bin/python" \
    "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/src/auto_driving/setup.py" \
    build --build-base "/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/build/auto_driving" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/install" --install-scripts="/home/alexandru/Documents/GitRepos/AuthonomousDriving/AuthonomousDriving/install/bin"
