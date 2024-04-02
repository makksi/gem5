#!/bin/sh

#X86
./build/X86/gem5.opt --stats-file="stats_x86_nocache.txt" configs/learning_gem5/part1/simple.py
./build/X86/gem5.opt --stats-file="stats_x86_l2-256k_l1d-64k_l1i_16k.txt" configs/learning_gem5/part1/two_level.py
./build/X86/gem5.opt --stats-file="stats_x86_l2-1M_l1d-128k_l1i_16k.txt" configs/learning_gem5/part1/two_level.py --l2_size='1MB' --l1d_size='128kB'
./build/X86/gem5.opt --stats-file="stats_x86_l2-256k_l1d-8k_l1i_2k.txt" configs/learning_gem5/part1/two_level.py --l2_size='256kB' --l1d_size='8kB' --l1i_size='2kB'
### RISCV
./build/RISCV/gem5.opt --stats-file="stats_riscv_nocache.txt" configs/learning_gem5/part1/simple-riscv.py
./build/RISCV/gem5.opt --stats-file="stats_riscv_l2-256k_l1d-64k_l1i_16k.txt" configs/learning_gem5/part1/two_level-riscv.py
./build/RISCV/gem5.opt --stats-file="stats_riscv_l2-1M_l1d-128k_l1i_16k.txt" configs/learning_gem5/part1/two_level-riscv.py --l2_size='1MB' --l1d_size='128kB'
./build/RISCV/gem5.opt --stats-file="stats_riscv_l2-256k_l1d-8k_l1i_2k.txt" configs/learning_gem5/part1/two_level-riscv.py --l2_size='256kB' --l1d_size='8kB' --l1i_size='2kB'
