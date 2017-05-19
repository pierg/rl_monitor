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

echo_and_run cd "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/mavros/mavros"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/lib/python2.7/dist-packages:/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/src/mavros/mavros/setup.py" \
    build --build-base "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/mavros/mavros" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install" --install-scripts="/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/install/bin"
