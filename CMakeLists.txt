cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

include(CTest)

set(Boost_USE_STATIC_LIBS OFF)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME OFF)
find_package(Boost 1.58.0 COMPONENTS filesystem thread system date_time program_options)

if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})

    file(GLOB SGSources "smartgame/*.cpp")
    file(GLOB SGHeaders "smartgame/*.h")

    file(GLOB GTPSources "gtpengine/*.cpp")
    file(GLOB GTPHeaders "gtpengine/*.h")

    file(GLOB GOSources "go/*.cpp")
    file(GLOB GOHeaders "go/*.h")

    file(GLOB GOUctSources "gouct/*.cpp")
    file(GLOB GOUctHeaders "gouct/*.h")

    file(GLOB SimplePlayersSources "simpleplayers/*.cpp")
    file(GLOB SimplePlayersHeaders "simpleplayers/*.h")


    add_library(smartgame STATIC
      ${SGSources}
      ${SGHeaders}
      )

    add_library(gtpengine STATIC
      ${GTPSources}
      ${GTPHeaders}
      )

    add_library(go STATIC
      ${GOSources}
      ${GOHeaders}
      )

    add_library(gouct STATIC
      ${GOUctSources}
      ${GOUctHeaders}
      )

    add_library(simpleplayers STATIC
      ${SimplePlayersSources}
      ${SimplePLayersHeaders}
      )


    add_executable(DeltaGo deltagomain/DeltagoMain.cpp deltagomain/DeltagoMainEngine.cpp)
    target_include_directories (DeltaGo PUBLIC go smartgame gtpengine gouct deltagomain simpleplayers)

    add_executable(Converter deltagomain/Converter.cpp deltagomain/DeltagoMainEngine.cpp)
    target_include_directories (Converter PUBLIC go smartgame gtpengine gouct deltagomain simpleplayers)

    target_link_libraries(DeltaGo PRIVATE smartgame)
    target_link_libraries(DeltaGo PRIVATE gtpengine)
    target_link_libraries(DeltaGo PRIVATE go)
    target_link_libraries(DeltaGo PRIVATE gouct)
    target_link_libraries(DeltaGo PRIVATE simpleplayers)
    target_link_libraries(DeltaGo PRIVATE ${Boost_LIBRARIES})

    target_link_libraries(Converter PRIVATE smartgame)
    target_link_libraries(Converter PRIVATE gtpengine)
    target_link_libraries(Converter PRIVATE go)
    target_link_libraries(Converter PRIVATE gouct)
    target_link_libraries(Converter PRIVATE simpleplayers)
    target_link_libraries(Converter PRIVATE ${Boost_LIBRARIES})

    target_link_libraries(smartgame PRIVATE ${Boost_LIBRARIES})

    target_link_libraries(gtpengine PRIVATE smartgame)

    target_link_libraries(go PRIVATE smartgame)

    target_link_libraries(gouct PRIVATE smartgame go)

    target_link_libraries(simpleplayers PRIVATE smartgame go)

    target_include_directories (smartgame PUBLIC gtpengine)
    target_include_directories (go PUBLIC smartgame gtpengine )
    target_include_directories (gouct PUBLIC go smartgame gtpengine )
    target_include_directories (simpleplayers PUBLIC go smartgame gtpengine )


endif()