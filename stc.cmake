set(lib_name stc)
#######################################
# library sources
set(thisfile ${wxroot}/build/cmake/${lib_name}.cmake)
source_group("" FILES ${thisfile})
list(APPEND ${lib_name}_libsrcs ${thisfile})
########################
# Common Headers
set(Common_hdrs
  ${wxroot}/include/wx/stc/stc.h
  )
source_group("Common Headers" FILES ${Common_hdrs})
list(APPEND ${lib_name}_libsrcs ${Common_hdrs})
########################
# Common Sources
set(Common_srcs
  ${wxroot}/src/common/dummy.cpp
  )
source_group("Common Sources" FILES ${Common_srcs})
list(APPEND ${lib_name}_libsrcs ${Common_srcs})
########################
# MSW Headers
set(MSW_hdrs
  ${wxroot}/include/wx/msw/genrcdefs.h
  )
source_group("MSW Headers" FILES ${MSW_hdrs})
list(APPEND ${lib_name}_libsrcs ${MSW_hdrs})
########################
# MSW Sources
set(MSW_srcs
  #${wxroot}/src/msw/version.rc
  )
source_group("MSW Sources" FILES ${MSW_srcs})
list(APPEND ${lib_name}_libsrcs ${MSW_srcs})
########################
# Setup Headers
set(Setup_hdrs
  ${wxroot}/include/wx/msw/setup.h
  )
source_group("Setup Headers" FILES ${Setup_hdrs})
list(APPEND ${lib_name}_libsrcs ${Setup_hdrs})
########################
# Source Files
set(Source_srcs
  ${wxroot}/src/stc/PlatWX.cpp
  ${wxroot}/src/stc/ScintillaWX.cpp
  ${wxroot}/src/stc/stc.cpp
  )
source_group("Source Files" FILES ${Source_srcs})
list(APPEND ${lib_name}_libsrcs ${Source_srcs})
#######################################
# library
add_library(${lib_name} STATIC ${${lib_name}_libsrcs})
get_directory_property(global_includes INCLUDE_DIRECTORIES)
set_property(TARGET ${lib_name} PROPERTY
  INCLUDE_DIRECTORIES ${global_includes}
    ${wxroot}/src/stc/scintilla/include
    ${wxroot}/src/stc/scintilla/lexlib
    ${wxroot}/src/stc/scintilla/src
  )
set_property(TARGET ${lib_name} PROPERTY
  COMPILE_DEFINITIONS __WX__ SCI_LEXER LINK_LEXERS
  )
set_wxtarget_properties(${lib_name})
