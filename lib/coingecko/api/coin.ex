defmodule Coingecko.API.Coin do
  import Coingecko.API.Base

  @endpoint "coins"

  def coins_list do
    request(:get, @endpoint <> "/list")
  end
end
