#!/bin/bash

hfst-strings2fst  | hfst-compose-intersect -2 kaa.Cyrl-Latn_1991.hfst  | hfst-fst2strings
