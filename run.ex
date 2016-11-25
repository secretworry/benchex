defmodule Main do
  def run(count) do
    Benchee.run(%{}, %{
      "list_loop_test" => fn -> Bench.list_loop_test(count) end,
      "list_iter_test" => fn -> Bench.list_iter_test(count) end,
      "list_comprehension_test" => fn -> Bench.list_comprehension_test(count) end,
      "binary_comprehension_test" => fn -> Bench.binary_comprehension_test(count) end,
      "binary_loop_test" => fn -> Bench.binary_loop_test(count) end
    })
  end
end

Main.run(16)
