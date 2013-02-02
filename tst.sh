#!/bin/sh

if [ -z "$1" ]; then
  ./build.sh; rm run_tests.Rout; R CMD BATCH run_tests.R; more run_tests.Rout
else
  rm run_tests.Rout; R CMD BATCH run_tests.R; more run_tests.Rout
fi
