# Bench

Benchmark different ways to construct a binary in Elixir

## Result
```
Name                                ips        average  deviation         median
list_loop_test                 124.48 K        8.03 μs    ±36.75%        6.80 μs
binary_loop_test               111.24 K        8.99 μs   ±176.61%        8.00 μs
list_iter_test                 102.70 K        9.74 μs    ±29.22%        8.40 μs
binary_comprehension_test       98.39 K       10.16 μs    ±78.49%        8.00 μs

Comparison:
list_loop_test                 124.48 K
binary_loop_test               111.24 K - 1.12x slower
list_iter_test                 102.70 K - 1.21x slower
binary_comprehension_test       98.39 K - 1.27x slower
```
