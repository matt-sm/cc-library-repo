""" source dependencies for a thirdparty package """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repositories():
    maybe(
        http_archive,
        name = "xxHash",
        sha256 = "19030315f4fc1b4b2cdb9d7a317069a109f90e39d1fe4c9159b7aaa39030eb95",
        strip_prefix = "xxHash-0.6.5/",
        urls = ["https://github.com/Cyan4973/xxhash/archive/refs/tags/v0.6.5.tar.gz"],
        build_file_content = """
package(
    default_visibility = ["@cc-library-repo//thirdparty/xxHash:__subpackages__"],
)

filegroup(
    name = "src",
    srcs = glob(
        include = ["**"],
        exclude = [
            "*.bazel",
            "WORKSPACE",
        ],
    ),
)

exports_files(glob(
    exclude_directories=1,
    include = ["**"],
    exclude = ["*.bazel"],
))

""",
    )
