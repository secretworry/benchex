defmodule Bench do

  def list_loop_with_iodata_to_binary_test(n) do
    do_list_loop(n, [])
  end
  def list_loop_with_list_to_binary_test(n) do
    do_list_loop_2(n, [])
  end

  def list_iter_test(n) do
    do_list_iter(n)
  end

  def binary_comprehension_test(n) do
    do_binary_comprehension(n)
  end

  def binary_loop_test(n) do
    do_binary_loop(n, "")
  end

  def list_comprehension_test(n) do
    do_list_comprehension(n)
  end

  defp do_binary_loop(0, acc), do: acc
  defp do_binary_loop(n, acc) do
    random = Enum.random(?a..?z)
    do_binary_loop(n - 1, << random, acc::binary>>)
  end

  defp do_list_loop(0, acc), do: acc |> IO.iodata_to_binary
  defp do_list_loop(size, acc) do
      random = Enum.random(?a..?z)
      do_list_loop(size - 1, [random|acc])
  end

  defp do_list_loop_2(0, acc), do: acc |> :erlang.list_to_binary
  defp do_list_loop_2(size, acc) do
    random = Enum.random(?a..?z)
    do_list_loop_2(size - 1, [random|acc])
  end

  def do_list_iter(n) when n > 0, do: Enum.map(1..n, fn _ -> Enum.random(?a..?z) end) |> IO. iodata_to_binary
  def do_list_iter(_), do: ""

  def do_list_comprehension(n) when n > 0 do
    (for _x <- 1..n, into: [], do: Enum.random(?a..?z)) |> IO.iodata_to_binary
  end
  def do_list_comprehension(_), do: ""

  def do_binary_comprehension(n) when n > 0 do
    for _x <- 1..n, into: <<>>, do: <<Enum.random(?a..?z)::8>>
  end
  def do_binary_comprehension(_), do: ""
end

