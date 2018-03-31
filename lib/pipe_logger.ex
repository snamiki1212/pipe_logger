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

  @doc """
  Pipe Logging.

  ## Examples

      iex> [1, 2, 3] |> PipeLogger.info("msg") |> Enum.map(&(&1))
      [1, 2, 3] # LOGGING >> 11:13:32.253 [info] "msg"[1, 2, 3]

  """
  def info(data, msg \\ "", metadata \\ [])
  def info(data, msg, metadata) when msg == "" do
    Logger.info(inspect(data), metadata)
    data
  end
  def info(data, msg, metadata) do
    Logger.info(inspect(msg) <> inspect(data), metadata)
    data
  end

    @doc """
  Pipe Logging.

  ## Examples

      iex> [1, 2, 3] |> PipeLogger.error("msg") |> Enum.map(&(&1))
      [1, 2, 3] # LOGGING >> 11:13:32.253 [error] "msg"[1, 2, 3]

  """
  def error(data, msg \\ "", metadata \\ [])
  def error(data, msg, metadata) when msg == "" do
    Logger.error(inspect(data), metadata)
    data
  end
  def error(data, msg, metadata) do
    Logger.error(inspect(msg) <> inspect(data), metadata)
    data
  end


end
