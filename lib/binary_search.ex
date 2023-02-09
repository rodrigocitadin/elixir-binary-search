defmodule BinarySearch do
  def call(list, target) when is_list(list) do
    list
    |> Enum.sort()
    |> search(target, 0, length(list) - 1)
  end

  defp search(list, target, left, right) do
    mid = floor((left + right) / 2)
    value = Enum.at(list, mid)

    cond do
      left > right -> -1
      value == target -> mid
      value < target -> search(list, target, mid + 1, right)
      value > target -> search(list, target, left, mid - 1)
    end
  end
end
