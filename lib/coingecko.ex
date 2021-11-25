defmodule Coingecko do
  @moduledoc """
  Documentation for `Coingecko`.
  """

  alias Coingecko.Behaviour
  @behaviour Behaviour

  @impl Behaviour
  defdelegate ping, to: Coingecko.API.Ping

  @impl Behaviour
  defdelegate categories_list, to: Coingecko.API.Category
end
