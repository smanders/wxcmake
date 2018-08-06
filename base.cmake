set(lib_name base)
#######################################
# library sources
########################
set(thisfile ${wxroot}/build/cmake/${lib_name}.cmake)
set(wxfile ${wxroot}/build/cmake/wx.cmake)
source_group("" FILES ${thisfile} ${wxfile})
list(APPEND ${lib_name}_libsrcs ${thisfile} ${wxfile})
########################
# Common Headers
set(Common_hdrs
  ${wxroot}/include/wx/afterstd.h
  ${wxroot}/include/wx/any.h
  ${wxroot}/include/wx/anystr.h
  ${wxroot}/include/wx/app.h
  ${wxroot}/include/wx/apptrait.h
  ${wxroot}/include/wx/archive.h
  ${wxroot}/include/wx/arrimpl.cpp
  ${wxroot}/include/wx/arrstr.h
  ${wxroot}/include/wx/atomic.h
  ${wxroot}/include/wx/base64.h
  ${wxroot}/include/wx/beforestd.h
  ${wxroot}/include/wx/buffer.h
  ${wxroot}/include/wx/build.h
  ${wxroot}/include/wx/chartype.h
  ${wxroot}/include/wx/checkeddelete.h
  ${wxroot}/include/wx/chkconf.h
  ${wxroot}/include/wx/clntdata.h
  ${wxroot}/include/wx/cmdargs.h
  ${wxroot}/include/wx/cmdline.h
  ${wxroot}/include/wx/compiler.h
  ${wxroot}/include/wx/confbase.h
  ${wxroot}/include/wx/config.h
  ${wxroot}/include/wx/containr.h
  ${wxroot}/include/wx/convauto.h
  ${wxroot}/include/wx/meta/convertible.h
  ${wxroot}/include/wx/cpp.h
  ${wxroot}/include/wx/crt.h
  ${wxroot}/include/wx/datetime.h
  ${wxroot}/include/wx/datstrm.h
  ${wxroot}/include/wx/dde.h
  ${wxroot}/include/wx/debug.h
  ${wxroot}/include/wx/defs.h
  ${wxroot}/include/wx/dir.h
  ${wxroot}/include/wx/dlimpexp.h
  ${wxroot}/include/wx/dlist.h
  ${wxroot}/include/wx/dynarray.h
  ${wxroot}/include/wx/dynlib.h
  ${wxroot}/include/wx/dynload.h
  ${wxroot}/include/wx/encconv.h
  ${wxroot}/include/wx/event.h
  ${wxroot}/include/wx/eventfilter.h
  ${wxroot}/include/wx/evtloop.h
  ${wxroot}/include/wx/except.h
  ${wxroot}/include/wx/features.h
  ${wxroot}/include/wx/ffile.h
  ${wxroot}/include/wx/file.h
  ${wxroot}/include/wx/fileconf.h
  ${wxroot}/include/wx/filefn.h
  ${wxroot}/include/wx/filename.h
  ${wxroot}/include/wx/filesys.h
  ${wxroot}/include/wx/flags.h
  ${wxroot}/include/wx/fontenc.h
  ${wxroot}/include/wx/fontmap.h
  ${wxroot}/include/wx/fs_arc.h
  ${wxroot}/include/wx/fs_filter.h
  ${wxroot}/include/wx/fs_mem.h
  ${wxroot}/include/wx/fs_zip.h
  ${wxroot}/include/wx/fswatcher.h
  ${wxroot}/include/wx/hash.h
  ${wxroot}/include/wx/hashmap.h
  ${wxroot}/include/wx/hashset.h
  ${wxroot}/include/wx/iconloc.h
  ${wxroot}/include/wx/meta/if.h
  ${wxroot}/include/wx/meta/implicitconversion.h
  ${wxroot}/include/wx/init.h
  ${wxroot}/include/wx/meta/int2type.h
  ${wxroot}/include/wx/intl.h
  ${wxroot}/include/wx/iosfwrap.h
  ${wxroot}/include/wx/ioswrap.h
  ${wxroot}/include/wx/ipc.h
  ${wxroot}/include/wx/ipcbase.h
  ${wxroot}/include/wx/kbdstate.h
  ${wxroot}/include/wx/language.h
  ${wxroot}/include/wx/link.h
  ${wxroot}/include/wx/list.h
  ${wxroot}/include/wx/listimpl.cpp
  ${wxroot}/include/wx/log.h
  ${wxroot}/include/wx/longlong.h
  ${wxroot}/include/wx/math.h
  ${wxroot}/include/wx/memconf.h
  ${wxroot}/include/wx/memory.h
  ${wxroot}/include/wx/memtext.h
  ${wxroot}/include/wx/mimetype.h
  ${wxroot}/include/wx/module.h
  ${wxroot}/include/wx/mousestate.h
  ${wxroot}/include/wx/meta/movable.h
  ${wxroot}/include/wx/msgout.h
  ${wxroot}/include/wx/msgqueue.h
  ${wxroot}/include/wx/mstream.h
  ${wxroot}/include/wx/numformatter.h
  ${wxroot}/include/wx/object.h
  ${wxroot}/include/wx/platform.h
  ${wxroot}/include/wx/platinfo.h
  ${wxroot}/include/wx/meta/pod.h
  ${wxroot}/include/wx/power.h
  ${wxroot}/include/wx/process.h
  ${wxroot}/include/wx/ptr_scpd.h
  ${wxroot}/include/wx/ptr_shrd.h
  ${wxroot}/include/wx/recguard.h
  ${wxroot}/include/wx/regex.h
  ${wxroot}/include/wx/meta/removeref.h
  ${wxroot}/include/wx/rtti.h
  ${wxroot}/include/wx/scopedarray.h
  ${wxroot}/include/wx/scopedptr.h
  ${wxroot}/include/wx/scopeguard.h
  ${wxroot}/include/wx/sharedptr.h
  ${wxroot}/include/wx/snglinst.h
  ${wxroot}/include/wx/sstream.h
  ${wxroot}/include/wx/stack.h
  ${wxroot}/include/wx/stackwalk.h
  ${wxroot}/include/wx/stdpaths.h
  ${wxroot}/include/wx/stdstream.h
  ${wxroot}/include/wx/stockitem.h
  ${wxroot}/include/wx/stopwatch.h
  ${wxroot}/include/wx/strconv.h
  ${wxroot}/include/wx/stream.h
  ${wxroot}/include/wx/string.h
  ${wxroot}/include/wx/stringimpl.h
  ${wxroot}/include/wx/stringops.h
  ${wxroot}/include/wx/strvararg.h
  ${wxroot}/include/wx/sysopt.h
  ${wxroot}/include/wx/tarstrm.h
  ${wxroot}/include/wx/textbuf.h
  ${wxroot}/include/wx/textfile.h
  ${wxroot}/include/wx/thread.h
  ${wxroot}/include/wx/thrimpl.cpp
  ${wxroot}/include/wx/time.h
  ${wxroot}/include/wx/timer.h
  ${wxroot}/include/wx/tls.h
  ${wxroot}/include/wx/tokenzr.h
  ${wxroot}/include/wx/tracker.h
  ${wxroot}/include/wx/translation.h
  ${wxroot}/include/wx/txtstrm.h
  ${wxroot}/include/wx/typeinfo.h
  ${wxroot}/include/wx/types.h
  ${wxroot}/include/wx/unichar.h
  ${wxroot}/include/wx/uri.h
  ${wxroot}/include/wx/ustring.h
  ${wxroot}/include/wx/utils.h
  ${wxroot}/include/wx/variant.h
  ${wxroot}/include/wx/vector.h
  ${wxroot}/include/wx/version.h
  ${wxroot}/include/wx/versioninfo.h
  ${wxroot}/include/wx/volume.h
  ${wxroot}/include/wx/weakref.h
  ${wxroot}/include/wx/wfstream.h
  ${wxroot}/include/wx/wx.h
  ${wxroot}/include/wx/wxchar.h
  ${wxroot}/include/wx/wxcrt.h
  ${wxroot}/include/wx/wxcrtbase.h
  ${wxroot}/include/wx/wxcrtvararg.h
  ${wxroot}/include/wx/wxprec.h
  ${wxroot}/include/wx/xlocale.h
  ${wxroot}/include/wx/xti.h
  ${wxroot}/include/wx/xti2.h
  ${wxroot}/include/wx/xtictor.h
  ${wxroot}/include/wx/xtihandler.h
  ${wxroot}/include/wx/xtiprop.h
  ${wxroot}/include/wx/xtistrm.h
  ${wxroot}/include/wx/xtitypes.h
  ${wxroot}/include/wx/zipstrm.h
  ${wxroot}/include/wx/zstream.h
  )
set_source_files_properties(
  ${wxroot}/include/wx/arrimpl.cpp
  ${wxroot}/include/wx/listimpl.cpp
  ${wxroot}/include/wx/thrimpl.cpp
  PROPERTIES HEADER_FILE_ONLY TRUE
  )
source_group("Common Headers" FILES ${Common_hdrs})
list(APPEND ${lib_name}_libsrcs ${Common_hdrs})
########################
# Common Sources
set(Common_srcs
  ${wxroot}/src/common/any.cpp
  ${wxroot}/src/common/appbase.cpp
  ${wxroot}/src/common/arcall.cpp
  ${wxroot}/src/common/arcfind.cpp
  ${wxroot}/src/common/archive.cpp
  ${wxroot}/src/common/arrstr.cpp
  ${wxroot}/src/common/base64.cpp
  ${wxroot}/src/common/clntdata.cpp
  ${wxroot}/src/common/cmdline.cpp
  ${wxroot}/src/common/config.cpp
  ${wxroot}/src/common/convauto.cpp
  ${wxroot}/src/common/datetime.cpp
  ${wxroot}/src/common/datetimefmt.cpp
  ${wxroot}/src/common/datstrm.cpp
  ${wxroot}/src/common/dircmn.cpp
  ${wxroot}/src/common/dummy.cpp
  ${wxroot}/src/common/dynarray.cpp
  ${wxroot}/src/common/dynlib.cpp
  ${wxroot}/src/common/dynload.cpp
  ${wxroot}/src/common/encconv.cpp
  ${wxroot}/src/common/event.cpp
  ${wxroot}/src/common/evtloopcmn.cpp
  ${wxroot}/src/common/extended.c
  ${wxroot}/src/common/ffile.cpp
  ${wxroot}/src/common/file.cpp
  ${wxroot}/src/common/fileback.cpp
  ${wxroot}/src/common/fileconf.cpp
  ${wxroot}/src/common/filefn.cpp
  ${wxroot}/src/common/filename.cpp
  ${wxroot}/src/common/filesys.cpp
  ${wxroot}/src/common/filtall.cpp
  ${wxroot}/src/common/filtfind.cpp
  ${wxroot}/src/common/fmapbase.cpp
  ${wxroot}/src/common/fs_arc.cpp
  ${wxroot}/src/common/fs_filter.cpp
  ${wxroot}/src/common/fs_mem.cpp
  ${wxroot}/src/common/fswatchercmn.cpp
  ${wxroot}/src/common/hash.cpp
  ${wxroot}/src/common/hashmap.cpp
  ${wxroot}/src/common/init.cpp
  ${wxroot}/src/common/intl.cpp
  ${wxroot}/src/common/ipcbase.cpp
  ${wxroot}/src/common/languageinfo.cpp
  ${wxroot}/src/common/list.cpp
  ${wxroot}/src/common/log.cpp
  ${wxroot}/src/common/longlong.cpp
  ${wxroot}/src/common/memory.cpp
  ${wxroot}/src/common/mimecmn.cpp
  ${wxroot}/src/common/module.cpp
  ${wxroot}/src/common/msgout.cpp
  ${wxroot}/src/common/mstream.cpp
  ${wxroot}/src/common/numformatter.cpp
  ${wxroot}/src/common/object.cpp
  ${wxroot}/src/common/platinfo.cpp
  ${wxroot}/src/common/powercmn.cpp
  ${wxroot}/src/common/process.cpp
  ${wxroot}/src/common/regex.cpp
  ${wxroot}/src/common/sstream.cpp
  ${wxroot}/src/common/stdpbase.cpp
  ${wxroot}/src/common/stdstream.cpp
  ${wxroot}/src/common/stopwatch.cpp
  ${wxroot}/src/common/strconv.cpp
  ${wxroot}/src/common/stream.cpp
  ${wxroot}/src/common/string.cpp
  ${wxroot}/src/common/stringimpl.cpp
  ${wxroot}/src/common/stringops.cpp
  ${wxroot}/src/common/strvararg.cpp
  ${wxroot}/src/common/sysopt.cpp
  ${wxroot}/src/common/tarstrm.cpp
  ${wxroot}/src/common/textbuf.cpp
  ${wxroot}/src/common/textfile.cpp
  ${wxroot}/src/common/threadinfo.cpp
  ${wxroot}/src/common/time.cpp
  ${wxroot}/src/common/timercmn.cpp
  ${wxroot}/src/common/timerimpl.cpp
  ${wxroot}/src/common/tokenzr.cpp
  ${wxroot}/src/common/translation.cpp
  ${wxroot}/src/common/txtstrm.cpp
  ${wxroot}/src/common/unichar.cpp
  ${wxroot}/src/common/uri.cpp
  ${wxroot}/src/common/ustring.cpp
  ${wxroot}/src/common/utilscmn.cpp
  ${wxroot}/src/common/variant.cpp
  ${wxroot}/src/common/wfstream.cpp
  ${wxroot}/src/common/wxcrt.cpp
  ${wxroot}/src/common/wxprintf.cpp
  ${wxroot}/src/common/xlocale.cpp
  ${wxroot}/src/common/xti.cpp
  ${wxroot}/src/common/xtistrm.cpp
  ${wxroot}/src/common/zipstrm.cpp
  ${wxroot}/src/common/zstream.cpp
  )
source_group("Common Sources" FILES ${Common_srcs})
list(APPEND ${lib_name}_libsrcs ${Common_srcs})
########################
# Generic Headers
set(Generic_hdrs
  ${wxroot}/include/wx/generic/fswatcher.h
  )
source_group("Generic Headers" FILES ${Generic_hdrs})
list(APPEND ${lib_name}_libsrcs ${Generic_hdrs})
########################
# Generic Sources
set(Generic_srcs
  ${wxroot}/src/generic/fswatcherg.cpp
  )
source_group("Generic Sources" FILES ${Generic_srcs})
list(APPEND ${lib_name}_libsrcs ${Generic_srcs})
########################
# MSW Headers
set(MSW_hdrs
  ${wxroot}/include/wx/msw/apptbase.h
  ${wxroot}/include/wx/msw/apptrait.h
  ${wxroot}/include/wx/msw/chkconf.h
  ${wxroot}/include/wx/msw/crashrpt.h
  ${wxroot}/include/wx/msw/dde.h
  ${wxroot}/include/wx/msw/debughlp.h
  ${wxroot}/include/wx/msw/evtloopconsole.h
  ${wxroot}/include/wx/msw/fswatcher.h
  ${wxroot}/include/wx/msw/gccpriv.h
  ${wxroot}/include/wx/msw/genrcdefs.h
  ${wxroot}/include/wx/msw/libraries.h
  ${wxroot}/include/wx/msw/mimetype.h
  ${wxroot}/include/wx/msw/private.h
  ${wxroot}/include/wx/msw/regconf.h
  ${wxroot}/include/wx/msw/registry.h
  ${wxroot}/include/wx/msw/seh.h
  ${wxroot}/include/wx/msw/stackwalk.h
  ${wxroot}/include/wx/msw/stdpaths.h
  ${wxroot}/include/wx/msw/winundef.h
  ${wxroot}/include/wx/msw/wrapcctl.h
  ${wxroot}/include/wx/msw/wrapcdlg.h
  ${wxroot}/include/wx/msw/wrapwin.h
  )
source_group("MSW Headers" FILES ${MSW_hdrs})
list(APPEND ${lib_name}_libsrcs ${MSW_hdrs})
########################
# MSW Sources
set(MSW_srcs
  ${wxroot}/src/msw/basemsw.cpp
  ${wxroot}/src/msw/crashrpt.cpp
  ${wxroot}/src/msw/dde.cpp
  ${wxroot}/src/msw/debughlp.cpp
  ${wxroot}/src/msw/dir.cpp
  ${wxroot}/src/msw/dlmsw.cpp
  ${wxroot}/src/msw/evtloopconsole.cpp
  ${wxroot}/src/msw/fswatcher.cpp
  ${wxroot}/src/msw/main.cpp
  ${wxroot}/src/msw/mimetype.cpp
  ${wxroot}/src/msw/power.cpp
  ${wxroot}/src/msw/regconf.cpp
  ${wxroot}/src/msw/registry.cpp
  ${wxroot}/src/msw/snglinst.cpp
  ${wxroot}/src/msw/stackwalk.cpp
  ${wxroot}/src/msw/stdpaths.cpp
  ${wxroot}/src/msw/thread.cpp
  ${wxroot}/src/msw/timer.cpp
  ${wxroot}/src/msw/utils.cpp
  ${wxroot}/src/msw/utilsexc.cpp
  #${wxroot}/src/msw/version.rc
  ${wxroot}/src/msw/volume.cpp
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
#######################################
# library
add_library(${lib_name} STATIC ${${lib_name}_libsrcs})
target_compile_definitions(${lib_name} PUBLIC $<BUILD_INTERFACE:WXBUILDING> $<BUILD_INTERFACE:__WXMSW__>
  $<BUILD_INTERFACE:UNICODE> $<BUILD_INTERFACE:_UNICODE>
  PRIVATE wxUSE_GUI=0 wxUSE_BASE=1
  )
target_include_directories(${lib_name} PUBLIC $<BUILD_INTERFACE:${wxroot}/include>
  $<BUILD_INTERFACE:${LIBRARY_OUTPUT_PATH}> # find setup.h
  )
target_link_libraries(${lib_name} PRIVATE wxregex wxzlib)
set_wxtarget_properties(${lib_name})
