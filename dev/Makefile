#all:
#	hfst-twolc kaa.Cyrl-Latn_1991.twol | hfst-fst2fst -O -o kaa.Cyrl-Latn_1991.ohfst
#	hfst-twolc kaa.Cyrl-Latn_1991.twol -o kaa.Cyrl-Latn_1991.hfst
#
#clean:
#	rm -rf *.ohfst


all: ../kaa-multi.automorf.hfst #../kaa_multi.autogen.hfst

kaa.Latn_2016-Latn_1991.hfst: kaa.Latn_2016-Latn_1991.lexc
	hfst-lexc $< -o $@

kaa-multi.LR.hfst: ../.deps/kaa.LR.hfst kaa.Latn_2016-Latn_1991.hfst
	hfst-compose-intersect -1 ../.deps/kaa.LR.hfst -2 kaa.Latn_2016-Latn_1991.hfst -o $@

../kaa-multi.automorf.hfst: ../.deps/kaa.LR.hfst kaa-multi.LR.hfst
	hfst-union -1 ../.deps/kaa.LR.hfst -2 kaa-multi.LR.hfst | hfst-fst2fst -w -o $@

clean:
	rm *.hfst ../kaa-multi.*
