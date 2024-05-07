# cc-library-repo

Companion repo for: https://github.com/bazelbuild/bazel/issues/21443

## Build (pass)
bazel build //thirdparty/xxHash:xxhsum

## Test (fail!)
bazel test //thirdparty:cross_package_integration_test 
