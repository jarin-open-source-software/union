# CMake generated Testfile for 
# Source directory: C:/Users/Gaming PC/Documents/GitHub/New folder/union
# Build directory: C:/Users/Gaming PC/Documents/GitHub/New folder/union/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(union_core_tests "C:/Users/Gaming PC/Documents/GitHub/New folder/union/build/Debug/union_core_tests.exe")
  set_tests_properties(union_core_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;14;add_test;C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(union_core_tests "C:/Users/Gaming PC/Documents/GitHub/New folder/union/build/Release/union_core_tests.exe")
  set_tests_properties(union_core_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;14;add_test;C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(union_core_tests "C:/Users/Gaming PC/Documents/GitHub/New folder/union/build/MinSizeRel/union_core_tests.exe")
  set_tests_properties(union_core_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;14;add_test;C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(union_core_tests "C:/Users/Gaming PC/Documents/GitHub/New folder/union/build/RelWithDebInfo/union_core_tests.exe")
  set_tests_properties(union_core_tests PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;14;add_test;C:/Users/Gaming PC/Documents/GitHub/New folder/union/CMakeLists.txt;0;")
else()
  add_test(union_core_tests NOT_AVAILABLE)
endif()
