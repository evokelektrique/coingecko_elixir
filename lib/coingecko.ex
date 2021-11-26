defmodule Coingecko do
  @moduledoc """
  Documentation for `Coingecko`.
  """

  alias Coingecko.Behaviour
  @behaviour Behaviour

  # Ping
  @impl Behaviour
  defdelegate ping, to: Coingecko.API.Ping

  # Categories
  @impl Behaviour
  defdelegate categories_list, to: Coingecko.API.Category

  # Simple
  @impl Behaviour
  defdelegate supported_vs_currencies, to: Coingecko.API.Simple

  # Coins
  @impl Behaviour
  defdelegate coins_list, to: Coingecko.API.Coin
end
