# PipeLogger

Pipelogger can output log not to stop pipe line.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `pipe_logger` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:pipe_logger, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/pipe_logger](https://hexdocs.pm/pipe_logger).

## Usage

```elixir
  require PipeLogger
  
  [1, 2, 3]
  |> PipeLogger.debug("logging message", label: 123)
  |> Enum.map(&(&1))
  
```
