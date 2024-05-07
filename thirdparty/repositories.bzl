""" source dependencies for all thirdparty packages """

load("//thirdparty/xxHash:repositories.bzl", xxHash_repositories = "repositories")

# buildifier: disable=unnamed-macro
def repositories():
    """ declare the required repositories for all thirdparty packages """
    xxHash_repositories()
