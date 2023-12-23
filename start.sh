. /opt/ros/humble/setup.zsh;
colcon build --cargo-args --release;
. ./install/setup.zsh;clear;
ros2 launch controller_2023_launch_a controller_2023_launch_a.launch.xml;
