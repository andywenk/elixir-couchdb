defmodule Couchdb.Request do
  @moduledoc """
    handle requests
  """

  @doc """
    handle GET requests
  """
  def get(url) do
    request(:get, url, nil)
  end

  @doc """
    handle POST requests
  """
  def post(url, body) do
    request(:post, url, body)
  end

  @doc """
    handle PUT requests
  """
  def put(url, body) do
    request(:put, url, body)
  end

  @doc """
    handle DELETE requests
  """
  def delete(url, body) do
    request(:delete, url, body)
  end

  @doc """
    handle COPY requests
  """
  def copy do

  end

  # private

  defp request(method, url, body) do
    :hackney.start

    headers = [{"Content-Type", "application/json"}]
    body    = JSEX.encode body

    options = []

    {:ok, code, headers, body_ref}  = :hackney.request(method, url, headers, body, options)
    {:ok, json_response}            = :hackney.body body_ref

    cond do
      code in 200..299 ->
        {:ok, json_response}
      code in 400..599 ->
        {:error, {{:http_status, code}, json_response}}
      true ->
        {:error, json_response}
    end
  end
end
