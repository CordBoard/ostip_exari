# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.DeviceStateChanged do
  @moduledoc """
  Notification that a device state has changed.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"device_state"
  ]

  @type t :: %__MODULE__{
    :"device_state" => DeviceState
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.DeviceStateChanged do
  import Swagger.Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"device_state", :struct, Swagger.Client.Model.DeviceState, options)
  end
end
