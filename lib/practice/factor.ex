defmodule Practice.Factor do
  def factor(x) do
    {num, _} = Integer.parse(x)
    inspect(List.flatten(primeFactors(num, 2, [])))
  end

  def primeFactors(num, fac, prime) when num < fac do
    prime
  end

  def primeFactors(num, fac, prime) when rem(num, fac) == 0 do
    prime = [fac] ++ [primeFactors(div(num, fac), fac, prime)]
  end

  def primeFactors(num, fac, prime) do
    primeFactors(num, fac + 1, prime)
  end
end
