include_guard()

# Use GTSAM's exported targets so Eigen and other build options propagate.
find_package(GTSAM CONFIG REQUIRED)
find_package(GTSAM_UNSTABLE CONFIG REQUIRED)

if(NOT TARGET GTSAM::GTSAM)
  add_library(GTSAM::GTSAM INTERFACE IMPORTED GLOBAL)
  set_target_properties(GTSAM::GTSAM PROPERTIES
    INTERFACE_LINK_LIBRARIES "gtsam;gtsam_unstable")
endif()
