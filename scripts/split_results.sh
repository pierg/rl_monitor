#!/bin/bash
split -l 1000 --additional-suffix=".m" rewards.m rewards
split -l 1000 --additional-suffix=".m" results.m results
