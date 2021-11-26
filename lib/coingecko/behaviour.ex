defmodule Coingecko.Behaviour do
  @moduledoc """
  A definition of the intended behavior of the core functions.
  """

  @callback ping() :: {:ok, term} | {:error, String.t()}
  @callback categories_list() :: {:ok, term} | {:error, String.t()}
  @callback supported_vs_currencies() :: {:ok, term} | {:error, String.t()}
end
