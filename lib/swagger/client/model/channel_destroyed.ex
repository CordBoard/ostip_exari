# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.ChannelDestroyed do
  @moduledoc """
  Notification that a channel has been destroyed.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"cause",
    :"cause_txt",
    :"channel"
  ]

  @type t :: %__MODULE__{
    :"cause" => Int,
    :"cause_txt" => String.t,
    :"channel" => Channel
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.ChannelDestroyed do
  import Swagger.Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cause", :struct, Swagger.Client.Model.Int, options)
    |> deserialize(:"channel", :struct, Swagger.Client.Model.Channel, options)
  end
end

