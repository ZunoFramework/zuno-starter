# Include FetchContent module
include(FetchContent)

# Fetch and add the Zuno framework as a dependency
FetchContent_Declare(
    zuno
    GIT_REPOSITORY https://github.com/ZunoFramework/zuno.git
    GIT_TAG        main  # or a specific tag/branch
)

FetchContent_MakeAvailable(zuno)