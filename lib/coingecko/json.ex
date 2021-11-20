defmodule Coingecko.JSON do
  @moduledoc """
  JSON encode/decode wrapper module.
  """

  @doc """
  Decode json string into elixir objects.
  """
  def decode(json) do
    json_library().decode(json, keys: :atoms)
  end

  @doc """
  Decode json string into elixir objects.
  """
  def decode!(json) do
    json_library().decode!(json, keys: :atoms)
  end

  defp json_library do
    Application.get_env(:coingecko, :json_library, Jason)
  end
end
