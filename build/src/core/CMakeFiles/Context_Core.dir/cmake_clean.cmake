file(REMOVE_RECURSE
  "libContext_Core.pdb"
  "libContext_Core.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang)
  include(CMakeFiles/Context_Core.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
