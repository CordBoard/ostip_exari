# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Api.ApiDocschannelsFormat do
  @moduledoc """
  API calls for all endpoints tagged `ApiDocschannelsFormat`.
  """

  alias Swagger.Client.Connection
  import Swagger.Client.RequestBuilder


  @doc """
  Answer a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec answer(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def answer(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/answer")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Exit application; continue execution in the dialplan.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :context (String.t): The context to continue to.
    - :extension (String.t): The extension to continue to.
    - :priority (integer()): The priority to continue to.
    - :label (String.t): The label to continue to - will supersede &#39;priority&#39; if both are provided.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec continue_in_dialplan(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def continue_in_dialplan(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"context" => :query,
      :"extension" => :query,
      :"priority" => :query,
      :"label" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/continue")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - endpoint (String.t): Endpoint for channel communication
  - app (String.t): Stasis Application to place channel into
  - opts (KeywordList): [optional] Optional parameters
    - :app_args (String.t): The application arguments to pass to the Stasis application provided by &#39;app&#39;. Mutually exclusive with &#39;context&#39;, &#39;extension&#39;, &#39;priority&#39;, and &#39;label&#39;.
    - :channel_id (String.t): The unique id to assign the channel on creation.
    - :other_channel_id (String.t): The unique id to assign the second channel when using local channels.
    - :originator (String.t): Unique ID of the calling channel
    - :formats (String.t): The format name capability list to use if originator is not specified. Ex. \&quot;ulaw,slin16\&quot;.  Format names can be found with \&quot;core show codecs\&quot;.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec create(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def create(connection, endpoint, app, opts \\ []) do
    optional_params = %{
      :"appArgs" => :query,
      :"channelId" => :query,
      :"otherChannelId" => :query,
      :"originator" => :query,
      :"formats" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/create")
    |> add_param(:query, :"endpoint", endpoint)
    |> add_param(:query, :"app", app)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Dial a created channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :caller (String.t): Channel ID of caller
    - :timeout (integer()): Dial timeout

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec dial(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def dial(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"caller" => :query,
      :"timeout" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/dial")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Channel details.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/channels/#{channel_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get the value of a channel variable or function.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - variable (String.t): The channel variable or function to get
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec get_channel_var(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def get_channel_var(connection, channel_id, variable, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/channels/#{channel_id}/variable")
    |> add_param(:query, :"variable", variable)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete (i.e. hangup) a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :reason (String.t): Reason for hanging up the channel

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec hangup(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def hangup(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"reason" => :query
    }
    %{}
    |> method(:delete)
    |> url("/channels/#{channel_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Hold a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec hold(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def hold(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/hold")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  List all active channels in Asterisk.

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
    |> url("/channels")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Mute a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :direction (String.t): Direction in which to mute audio

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec mute(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def mute(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"direction" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/mute")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create a new channel (originate).
  The new channel is created immediately and a snapshot of it returned. If a Stasis application is provided it will be automatically subscribed to the originated channel for further events and updates.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - endpoint (String.t): Endpoint to call.
  - opts (KeywordList): [optional] Optional parameters
    - :extension (String.t): The extension to dial after the endpoint answers. Mutually exclusive with &#39;app&#39;.
    - :context (String.t): The context to dial after the endpoint answers. If omitted, uses &#39;default&#39;. Mutually exclusive with &#39;app&#39;.
    - :priority (integer()): The priority to dial after the endpoint answers. If omitted, uses 1. Mutually exclusive with &#39;app&#39;.
    - :label (String.t): The label to dial after the endpoint answers. Will supersede &#39;priority&#39; if provided. Mutually exclusive with &#39;app&#39;.
    - :app (String.t): The application that is subscribed to the originated channel. When the channel is answered, it will be passed to this Stasis application. Mutually exclusive with &#39;context&#39;, &#39;extension&#39;, &#39;priority&#39;, and &#39;label&#39;.
    - :app_args (String.t): The application arguments to pass to the Stasis application provided by &#39;app&#39;. Mutually exclusive with &#39;context&#39;, &#39;extension&#39;, &#39;priority&#39;, and &#39;label&#39;.
    - :caller_id (String.t): CallerID to use when dialing the endpoint or extension.
    - :timeout (integer()): Timeout (in seconds) before giving up dialing, or -1 for no timeout.
    - :variables (Containers): The \&quot;variables\&quot; key in the body object holds variable key/value pairs to set on the channel on creation. Other keys in the body object are interpreted as query parameters. Ex. { \&quot;endpoint\&quot;: \&quot;SIP/Alice\&quot;, \&quot;variables\&quot;: { \&quot;CALLERID(name)\&quot;: \&quot;Alice\&quot; } }
    - :channel_id (String.t): The unique id to assign the channel on creation.
    - :other_channel_id (String.t): The unique id to assign the second channel when using local channels.
    - :originator (String.t): The unique id of the channel which is originating this one.
    - :formats (String.t): The format name capability list to use if originator is not specified. Ex. \&quot;ulaw,slin16\&quot;.  Format names can be found with \&quot;core show codecs\&quot;.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec originate(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def originate(connection, endpoint, opts \\ []) do
    optional_params = %{
      :"extension" => :query,
      :"context" => :query,
      :"priority" => :query,
      :"label" => :query,
      :"app" => :query,
      :"appArgs" => :query,
      :"callerId" => :query,
      :"timeout" => :query,
      :"variables" => :body,
      :"channelId" => :query,
      :"otherChannelId" => :query,
      :"originator" => :query,
      :"formats" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels")
    |> add_param(:query, :"endpoint", endpoint)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Create a new channel (originate with id).
  The new channel is created immediately and a snapshot of it returned. If a Stasis application is provided it will be automatically subscribed to the originated channel for further events and updates.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): The unique id to assign the channel on creation.
  - endpoint (String.t): Endpoint to call.
  - opts (KeywordList): [optional] Optional parameters
    - :extension (String.t): The extension to dial after the endpoint answers. Mutually exclusive with &#39;app&#39;.
    - :context (String.t): The context to dial after the endpoint answers. If omitted, uses &#39;default&#39;. Mutually exclusive with &#39;app&#39;.
    - :priority (integer()): The priority to dial after the endpoint answers. If omitted, uses 1. Mutually exclusive with &#39;app&#39;.
    - :label (String.t): The label to dial after the endpoint answers. Will supersede &#39;priority&#39; if provided. Mutually exclusive with &#39;app&#39;.
    - :app (String.t): The application that is subscribed to the originated channel. When the channel is answered, it will be passed to this Stasis application. Mutually exclusive with &#39;context&#39;, &#39;extension&#39;, &#39;priority&#39;, and &#39;label&#39;.
    - :app_args (String.t): The application arguments to pass to the Stasis application provided by &#39;app&#39;. Mutually exclusive with &#39;context&#39;, &#39;extension&#39;, &#39;priority&#39;, and &#39;label&#39;.
    - :caller_id (String.t): CallerID to use when dialing the endpoint or extension.
    - :timeout (integer()): Timeout (in seconds) before giving up dialing, or -1 for no timeout.
    - :variables (Containers): The \&quot;variables\&quot; key in the body object holds variable key/value pairs to set on the channel on creation. Other keys in the body object are interpreted as query parameters. Ex. { \&quot;endpoint\&quot;: \&quot;SIP/Alice\&quot;, \&quot;variables\&quot;: { \&quot;CALLERID(name)\&quot;: \&quot;Alice\&quot; } }
    - :other_channel_id (String.t): The unique id to assign the second channel when using local channels.
    - :originator (String.t): The unique id of the channel which is originating this one.
    - :formats (String.t): The format name capability list to use if originator is not specified. Ex. \&quot;ulaw,slin16\&quot;.  Format names can be found with \&quot;core show codecs\&quot;.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec originate_with_id(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def originate_with_id(connection, channel_id, endpoint, opts \\ []) do
    optional_params = %{
      :"extension" => :query,
      :"context" => :query,
      :"priority" => :query,
      :"label" => :query,
      :"app" => :query,
      :"appArgs" => :query,
      :"callerId" => :query,
      :"timeout" => :query,
      :"variables" => :body,
      :"otherChannelId" => :query,
      :"originator" => :query,
      :"formats" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}")
    |> add_param(:query, :"endpoint", endpoint)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Start playback of media.
  The media URI may be any of a number of URI&#39;s. Currently sound:, recording:, number:, digits:, characters:, and tone: URI&#39;s are supported. This operation creates a playback resource that can be used to control the playback of media (pause, rewind, fast forward, etc.)

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - media ([String.t]): Media URIs to play.
  - opts (KeywordList): [optional] Optional parameters
    - :lang (String.t): For sounds, selects language for sound.
    - :offsetms (integer()): Number of milliseconds to skip before playing. Only applies to the first URI if multiple media URIs are specified.
    - :skipms (integer()): Number of milliseconds to skip for forward/reverse operations.
    - :playback_id (String.t): Playback ID.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec play(Tesla.Env.client, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def play(connection, channel_id, media, opts \\ []) do
    optional_params = %{
      :"lang" => :query,
      :"offsetms" => :query,
      :"skipms" => :query,
      :"playbackId" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/play")
    |> add_param(:query, :"media", media)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Start playback of media and specify the playbackId.
  The media URI may be any of a number of URI&#39;s. Currently sound:, recording:, number:, digits:, characters:, and tone: URI&#39;s are supported. This operation creates a playback resource that can be used to control the playback of media (pause, rewind, fast forward, etc.)

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - playback_id (String.t): Playback ID.
  - media ([String.t]): Media URIs to play.
  - opts (KeywordList): [optional] Optional parameters
    - :lang (String.t): For sounds, selects language for sound.
    - :offsetms (integer()): Number of milliseconds to skip before playing. Only applies to the first URI if multiple media URIs are specified.
    - :skipms (integer()): Number of milliseconds to skip for forward/reverse operations.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec play_with_id(Tesla.Env.client, String.t, String.t, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def play_with_id(connection, channel_id, playback_id, media, opts \\ []) do
    optional_params = %{
      :"lang" => :query,
      :"offsetms" => :query,
      :"skipms" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/play/#{playback_id}")
    |> add_param(:query, :"media", media)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Start a recording.
  Record audio from a channel. Note that this will not capture audio sent to the channel. The bridge itself has a record feature if that&#39;s what you want.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - name (String.t): Recording&#39;s filename
  - format (String.t): Format to encode audio in
  - opts (KeywordList): [optional] Optional parameters
    - :max_duration_seconds (integer()): Maximum duration of the recording, in seconds. 0 for no limit
    - :max_silence_seconds (integer()): Maximum duration of silence, in seconds. 0 for no limit
    - :if_exists (String.t): Action to take if a recording with the same name already exists.
    - :beep (boolean()): Play beep when recording begins
    - :terminate_on (String.t): DTMF input to terminate recording

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec record(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def record(connection, channel_id, name, format, opts \\ []) do
    optional_params = %{
      :"maxDurationSeconds" => :query,
      :"maxSilenceSeconds" => :query,
      :"ifExists" => :query,
      :"beep" => :query,
      :"terminateOn" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/record")
    |> add_param(:query, :"name", name)
    |> add_param(:query, :"format", format)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Redirect the channel to a different location.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - endpoint (String.t): The endpoint to redirect the channel to
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec redirect(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def redirect(connection, channel_id, endpoint, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/redirect")
    |> add_param(:query, :"endpoint", endpoint)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Indicate ringing to a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec ring(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ring(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/ring")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Stop ringing indication on a channel if locally generated.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec ring_stop(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ring_stop(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/channels/#{channel_id}/ring")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Send provided DTMF to a given channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :dtmf (String.t): DTMF To send.
    - :before (integer()): Amount of time to wait before DTMF digits (specified in milliseconds) start.
    - :between (integer()): Amount of time in between DTMF digits (specified in milliseconds).
    - :duration (integer()): Length of each DTMF digit (specified in milliseconds).
    - :after (integer()): Amount of time to wait after DTMF digits (specified in milliseconds) end.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec send_dtmf(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def send_dtmf(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"dtmf" => :query,
      :"before" => :query,
      :"between" => :query,
      :"duration" => :query,
      :"after" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/dtmf")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Set the value of a channel variable or function.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - variable (String.t): The channel variable or function to set
  - opts (KeywordList): [optional] Optional parameters
    - :value (String.t): The value to set the variable to

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec set_channel_var(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def set_channel_var(connection, channel_id, variable, opts \\ []) do
    optional_params = %{
      :"value" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/variable")
    |> add_param(:query, :"variable", variable)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Start snooping.
  Snoop (spy/whisper) on a specific channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - app (String.t): Application the snooping channel is placed into
  - opts (KeywordList): [optional] Optional parameters
    - :spy (String.t): Direction of audio to spy on
    - :whisper (String.t): Direction of audio to whisper into
    - :app_args (String.t): The application arguments to pass to the Stasis application
    - :snoop_id (String.t): Unique ID to assign to snooping channel

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec snoop_channel(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def snoop_channel(connection, channel_id, app, opts \\ []) do
    optional_params = %{
      :"spy" => :query,
      :"whisper" => :query,
      :"appArgs" => :query,
      :"snoopId" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/snoop")
    |> add_param(:query, :"app", app)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Start snooping.
  Snoop (spy/whisper) on a specific channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - snoop_id (String.t): Unique ID to assign to snooping channel
  - app (String.t): Application the snooping channel is placed into
  - opts (KeywordList): [optional] Optional parameters
    - :spy (String.t): Direction of audio to spy on
    - :whisper (String.t): Direction of audio to whisper into
    - :app_args (String.t): The application arguments to pass to the Stasis application

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec snoop_channel_with_id(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def snoop_channel_with_id(connection, channel_id, snoop_id, app, opts \\ []) do
    optional_params = %{
      :"spy" => :query,
      :"whisper" => :query,
      :"appArgs" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/snoop/#{snoop_id}")
    |> add_param(:query, :"app", app)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Play music on hold to a channel.
  Using media operations such as /play on a channel playing MOH in this manner will suspend MOH without resuming automatically. If continuing music on hold is desired, the stasis application must reinitiate music on hold.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :moh_class (String.t): Music on hold class to use

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec start_moh(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def start_moh(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"mohClass" => :query
    }
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/moh")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Play silence to a channel.
  Using media operations such as /play on a channel playing silence in this manner will suspend silence without resuming automatically.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec start_silence(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def start_silence(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/channels/#{channel_id}/silence")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Stop playing music on hold to a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec stop_moh(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def stop_moh(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/channels/#{channel_id}/moh")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Stop playing silence to a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec stop_silence(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def stop_silence(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/channels/#{channel_id}/silence")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Remove a channel from hold.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec unhold(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def unhold(connection, channel_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/channels/#{channel_id}/hold")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Unmute a channel.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - channel_id (String.t): Channel&#39;s id
  - opts (KeywordList): [optional] Optional parameters
    - :direction (String.t): Direction in which to unmute audio

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec unmute(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def unmute(connection, channel_id, opts \\ []) do
    optional_params = %{
      :"direction" => :query
    }
    %{}
    |> method(:delete)
    |> url("/channels/#{channel_id}/mute")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
