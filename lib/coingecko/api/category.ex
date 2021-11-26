defmodule Coingecko.API.Category do
  import Coingecko.API.Base

  @endpoint "coins/categories"

  def categories_list do
    request(:get, @endpoint <> "/list")
  end
end
