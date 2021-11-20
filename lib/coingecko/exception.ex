defmodule Coingecko.ConnectionError do
  defexception [:reason, message: "connection error"]
end

defmodule Coingecko.NotFoundError do
  defexception message: "page not found error"
end
