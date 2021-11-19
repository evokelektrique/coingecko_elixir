defmodule Coingecko do
  @moduledoc """
  Documentation for `Coingecko`.
  """

  alias Coingecko.Behaviour
  @behaviour Behaviour

  @impl Behaviour
  defdelegate ping, to: Coingecko.API.Ping
end
