# VULKAN,VULKANGL Shaders processing

execute_process(
  COMMAND
  "${PYTHON_EXECUTABLE}" 
  ${CMAKE_CURRENT_LIST_DIR}/../aten/src/ATen/native/vulkan/gen_glsl.py
  --glsl-path ${CMAKE_CURRENT_LIST_DIR}/../aten/src/ATen/native/vulkan/glsl
  --output-path ${CMAKE_CURRENT_LIST_DIR}/../aten/src/ATen/native/vulkan
  RESULT_VARIABLE error_code)

if(error_code)
  message(FATAL_ERROR "Failed to gen glsl.h and glsl.cpp with shaders sources for VULKAN backend")
endif()
