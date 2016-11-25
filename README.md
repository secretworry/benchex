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
Elixir 1.3.0
Benchmark suite executing with the following configuration:
warmup: 2.0s
time: 5.0s
parallel: 1
Estimated total run time: 35.0s

Benchmarking binary_comprehension_test...
Benchmarking binary_loop_test...
Benchmarking list_comprehension_test...
Benchmarking list_iter_test...
Benchmarking list_loop_test...
Warning: The function you are trying to benchmark is super fast, making measures more unreliable! See: https://github.com/PragTob/benchee/wiki/Benchee-Warnings#fast-execution-warning


Name                                ips        average  deviation         median
list_loop_test                 124.38 K        8.04 μs    ±28.69%        7.00 μs
binary_loop_test               108.31 K        9.23 μs    ±80.18%        8.00 μs
list_comprehension_test         97.55 K       10.25 μs   ±127.25%        9.00 μs
list_iter_test                  94.39 K       10.59 μs   ±109.99%        9.00 μs
binary_comprehension_test       77.62 K       12.88 μs    ±92.25%       10.00 μs

Comparison:
list_loop_test                 124.38 K
binary_loop_test               108.31 K - 1.15x slower
list_comprehension_test         97.55 K - 1.28x slower
list_iter_test                  94.39 K - 1.32x slower
binary_comprehension_test       77.62 K - 1.60x slower
```

The best solution would be `list_loop_test`
