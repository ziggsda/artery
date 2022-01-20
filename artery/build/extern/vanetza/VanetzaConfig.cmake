# Temporarily extend module path for bundled find package scripts
list(APPEND CMAKE_MODULE_PATH "/home/dazhou/Desktop/artery/extern/vanetza/cmake")

include(CMakeFindDependencyMacro)
include(MacroFindDependencyComponents)

find_dependency_components(Boost VERSION 1.71 COMPONENTS date_time)
include(CompatBoostTargets)

find_dependency(GeographicLib )
find_dependency(Threads)

if(TRUE)
    find_dependency(CryptoPP 8.5.0)
endif()

if()
    string(REGEX REPLACE "[a-z]+" "" OPENSSL_VERSION_WITHOUT_PATCH )
    # workaround for old CMake versions before 3.3
    if("${CMAKE_VERSION}" VERSION_LESS 3.3)
        function(fix_openssl_found variable access value)
            set(OpenSSL_FOUND ${value} PARENT_SCOPE)
        endfunction()
        variable_watch(OPENSSL_FOUND fix_openssl_found)
    endif()
    find_dependency(OpenSSL ${OPENSSL_VERSION_WITHOUT_PATCH})
    include(CompatOpenSSLTargets)
endif()

# Restore previous module path
list(REMOVE_AT CMAKE_MODULE_PATH -1)

include("${CMAKE_CURRENT_LIST_DIR}/VanetzaExports.cmake")
