<p align="center">
  <img src="https://static.coingecko.com/s/coingecko-branding-guide-4f5245361f7a47478fa54c2c57808a9e05d31ac7ca498ab189a3827d6000e22b.png" width="320" />
  <br>
  <br>
  Coingecko API library for Elixir
</p>

# Getting Started
[Insert a brief description about the library]

## Available Endpoints

**ping**
```elixir
iex(1)> Coingecko.ping
%{gecko_says: "(V3) To the Moon!"}
```

**categories_list**
```elixir
iex(1)> Coingecko.categories_list
[%{category_id: "aave-tokens", name: "Aave Tokens"}, ...]
```

**supported_vs_currencies**
```elixir
iex(1)> Coingecko.supported_vs_currencies
["btc", "eth", "ltc", "bch", "bnb", "eos", "xrp", ...]
```

**Coins list**
```elixir
iex(1)> Coingecko.coins_list
[
  %{id: "01coin", name: "01coin", symbol: "zoc"},
  %{
    id: "0-5x-long-algorand-token",
    name: "0.5X Long Algorand Token",
    symbol: "algohalf"
  },
...
]
```
