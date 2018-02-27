# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.ChannelTalkingStarted do
  @moduledoc """
  Talking was detected on the channel.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"channel"
  ]

  @type t :: %__MODULE__{
    :"channel" => Channel
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.ChannelTalkingStarted do
  import Swagger.Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"channel", :struct, Swagger.Client.Model.Channel, options)
  end
end
