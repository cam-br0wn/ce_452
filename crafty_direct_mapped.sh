#!/bin/sh
cd /home/ckb4640/ce_452/ && \
./simplescalar/simplesim-3.0/sim-outorder \
-max:inst 100000000 \
-fetch:ifqsize 16 \
-bpred 2lev \
-bpred:2lev 1 1024 8 0 \
-bpred:ras 32 \
-bpred:btb 1024 4 \
-decode:width 4 \
-issue:width 8 \
-ruu:size 128 \
-lsq:size 64 \
-cache:dl1 dl1:256:256:1:l \
-cache:dl1lat 4 \
-cache:dl2 ul2:1024:1024:8:l \
-cache:dl2lat 11 \
-cache:il1 il1:256:256:1:l \
-cache:il1lat 4 \
-cache:il2 dl2 \
-cache:il2lat 11 \
-mem:lat 61 61 \
-tlb:itlb itlb:1:4096:32:l \
-tlb:dtlb dtlb:1:4096:32:l \
-tlb:lat 3 \
-fastfwd 1 \
./Specbinaries/crafty-ref/crafty00.peak.ev6 < ./Specbinaries/crafty-ref/crafty.in > /dev/null
