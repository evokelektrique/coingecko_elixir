defmodule Coingecko.API.Simple do
  import Coingecko.API.Base

  @endpoint "simple"

  def supported_vs_currencies do
    request(:get, @endpoint <> "/supported_vs_currencies")
  end
end
