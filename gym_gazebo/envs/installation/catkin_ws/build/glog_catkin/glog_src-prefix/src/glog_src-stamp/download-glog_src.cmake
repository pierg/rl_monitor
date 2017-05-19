message(STATUS "downloading...
     src='https://github.com/google/glog/archive/v0.3.4.zip'
     dst='/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/glog_catkin/glog_src-prefix/src/v0.3.4.zip'
     timeout='none'")




file(DOWNLOAD
  "https://github.com/google/glog/archive/v0.3.4.zip"
  "/home/chalmers/gym-gazebo/gym_gazebo/envs/installation/catkin_ws/build/glog_catkin/glog_src-prefix/src/v0.3.4.zip"
  SHOW_PROGRESS
  # no EXPECTED_HASH
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'https://github.com/google/glog/archive/v0.3.4.zip' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
