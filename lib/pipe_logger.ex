defmodule PipeLogger do
  require Logger
  @moduledoc """
  Documentation for PipeLogger.
  """

  @doc """
  Pipe Logging.

  ## Examples

      iex> [1, 2, 3] |> PipeLogger.debug("msg") |> Enum.map(&(&1))
      [1, 2, 3] # LOGGING >> 11:13:32.253 [debug] "msg"[1, 2, 3]

  """
  def debug(data, msg \\ "", metadata \\ [])
  def debug(data, msg, metadata) when msg == "" do
    Logger.debug(inspect(data), metadata)
    data
  end
  def debug(data, msg, metadata) do
    Logger.debug(inspect(msg) <> inspect(data), metadata)
    data
  end

end
