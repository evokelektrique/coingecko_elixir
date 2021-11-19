defmodule Coingecko.Behaviour do
  @moduledoc """
  A definition of the intended behavior of the core functions.
  """

  @callback ping() :: {:ok, term} | {:error, String.t()}
end
