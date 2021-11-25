defmodule CoingeckoTest do
  use ExUnit.Case
  doctest Coingecko

  setup_all do
    []
  end

  test "Ping" do
    assert Coingecko.ping()
  end

  test "Categories list" do
    assert Coingecko.categories_list()
  end
end
