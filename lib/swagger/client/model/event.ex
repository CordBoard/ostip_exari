# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.Event do
  @moduledoc """
  Base type for asynchronous events from Asterisk.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"application",
    :"timestamp"
  ]

  @type t :: %__MODULE__{
    :"application" => String.t,
    :"timestamp" => DateTime
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.Event do
  def decode(value, _options) do
    value
  end
end

