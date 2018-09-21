defmodule Practice.Calc do
  def parse_float(text) do
    {num, _} = Float.parse(text)
    num
  end

  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    tagged = []
    e = String.split(expr, "", trim: true)
    token = Enum.flat_map(e, fn string ->
      case Float.parse(string) do
        {int, _rest} -> [num: int]
        :error -> [op: string]
      end
    end)

    #eval(token, "*")



    inspect(token)


    # Hint:
    # expr
    # |> split
    # |> tag_tokens  (e.g. [+, 1] => [{:op, "+"}, {:num, 1.0}]
    # |> convert to postfix
    # |> reverse to prefix
    # |> evaluate as a stack calculator using pattern matching
  end
end
