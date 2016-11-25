# Bench

Benchmark different ways to construct a binary in Elixir

## Usage

Under the project directory, execute:
```shell
mix run run.ex
```

## Result

From my personal computer, the result is
```
Erlang/OTP 18 [erts-7.3] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]
Elixir 1.3.1
Benchmark suite executing with the following configuration:
warmup: 2.0s
time: 5.0s
parallel: 1
Estimated total run time: 42.0s

Benchmarking binary_comprehension_test...
Benchmarking binary_loop_test...
Benchmarking list_comprehension_test...
Benchmarking list_iter_test...
Benchmarking list_loop_with_iodata_to_binary_test...
Warning: The function you are trying to benchmark is super fast, making measures more unreliable! See: https://github.com/PragTob/benchee/wiki/Benchee-Warnings#fast-execution-warning

Benchmarking list_loop_with_list_to_binary_test...
Warning: The function you are trying to benchmark is super fast, making measures more unreliable! See: https://github.com/PragTob/benchee/wiki/Benchee-Warnings#fast-execution-warning


Name                                           ips        average  deviation         median
list_loop_with_list_to_binary_test        133.56 K        7.49 μs    ±26.22%        6.90 μs
list_loop_with_iodata_to_binary_test      132.40 K        7.55 μs    ±38.54%        6.90 μs
binary_loop_test                          110.02 K        9.09 μs   ±162.35%        8.00 μs
list_comprehension_test                   106.60 K        9.38 μs    ±62.35%        9.00 μs
list_iter_test                             99.28 K       10.07 μs   ±101.25%        9.00 μs
binary_comprehension_test                  98.06 K       10.20 μs   ±179.18%        9.00 μs

Comparison:
list_loop_with_list_to_binary_test        133.56 K
list_loop_with_iodata_to_binary_test      132.40 K - 1.01x slower
binary_loop_test                          110.02 K - 1.21x slower
list_comprehension_test                   106.60 K - 1.25x slower
list_iter_test                             99.28 K - 1.35x slower
binary_comprehension_test                  98.06 K - 1.36x slower
```

The best solution would be `list_loop_with_list_to_binary_test`
