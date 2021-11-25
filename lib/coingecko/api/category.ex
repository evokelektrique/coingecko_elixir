defmodule Coingecko.API.Category do
  import Coingecko.API.Base

  def categories_list do
    request(:get, "coins/categories/list")
  end
end
