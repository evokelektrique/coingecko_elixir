defmodule Coingecko.Behaviour do
  @moduledoc """
  A definition of the intended behavior of the core functions.
  """

  # Ping
  @callback ping() :: {:ok, term} | {:error, String.t()}

  # Categories
  @callback categories_list() :: {:ok, term} | {:error, String.t()}

  # Simple
  @callback supported_vs_currencies() :: {:ok, term} | {:error, String.t()}

  # Coins
  @callback coins_list() :: {:ok, term} | {:error, String.t()}
end
