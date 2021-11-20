defmodule Coingecko.API.Base do
  @moduledoc """
  Provides basic and common functionalities for Coingecko API.
  """

  def request(method, path, headers \\ []) do
    do_request(method, request_url(path), headers)
  end

  defp do_request(method, url, headers, options \\ [parse_result: true]) do
    case HTTPoison.request(method, url, [], headers) do
      {:error, %HTTPoison.Error{reason: reason}} ->
        raise Coingecko.ConnectionError, reason: reason

      {:ok, %HTTPoison.Response{status_code: 404}} ->
        raise Coingecko.NotFoundError

      {:ok, result} ->
        if Keyword.get(options, :parse_result, true) do
          parse_result(result)
        else
          result
        end
    end
  end

  defp parse_result(result) do
    %HTTPoison.Response{status_code: 200, body: body} = result
    Coingecko.JSON.decode!(body)
  end

  defp request_url(path) do
    "https://api.coingecko.com/api/v3/#{path}"
  end
end
