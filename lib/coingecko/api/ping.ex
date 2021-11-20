defmodule Coingecko.API.Ping do
  import Coingecko.API.Base

  def ping do
    request(:get, "ping")
  end
end
