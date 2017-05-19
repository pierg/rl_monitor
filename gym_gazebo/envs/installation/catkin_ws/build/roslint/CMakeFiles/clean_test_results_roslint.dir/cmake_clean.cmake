FILE(REMOVE_RECURSE
  "CMakeFiles/clean_test_results_roslint"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/clean_test_results_roslint.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
