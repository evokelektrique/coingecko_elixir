defmodule Coingecko.API.Coin do
  import Coingecko.API.Base

  @endpoint "coins"

  def coins_list(include_platform \\ false) do
    request(:get, @endpoint <> "/list", include_platform: include_platform)
  end
end
