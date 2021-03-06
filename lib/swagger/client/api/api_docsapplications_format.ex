# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Api.ApiDocsapplicationsFormat do
  @moduledoc """
  API calls for all endpoints tagged `ApiDocsapplicationsFormat`.
  """

  alias Swagger.Client.Connection
  import Swagger.Client.RequestBuilder


  @doc """
  Get details of an application.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - application_name (String.t): Application&#39;s name
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get(connection, application_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/applications/#{application_name}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List all applications.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec list(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def list(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/applications")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Subscribe an application to a event source.
  Returns the state of the application after the subscriptions have changed

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - application_name (String.t): Application&#39;s name
  - event_source ([String.t]): URI for event source (channel:{channelId}, bridge:{bridgeId}, endpoint:{tech}[/{resource}], deviceState:{deviceName}
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec subscribe(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def subscribe(connection, application_name, event_source, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/applications/#{application_name}/subscription")
    |> add_param(:query, :"eventSource", event_source)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Unsubscribe an application from an event source.
  Returns the state of the application after the subscriptions have changed

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - application_name (String.t): Application&#39;s name
  - event_source ([String.t]): URI for event source (channel:{channelId}, bridge:{bridgeId}, endpoint:{tech}[/{resource}], deviceState:{deviceName}
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec unsubscribe(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def unsubscribe(connection, application_name, event_source, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/applications/#{application_name}/subscription")
    |> add_param(:query, :"eventSource", event_source)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
