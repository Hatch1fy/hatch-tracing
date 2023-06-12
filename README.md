# HatchTracing

It's a library that helps you to create `OpenTelemetry` spans with the least effort.

When you `use HatchTracing` it will include all required modules to start using tracing,
as well as importing the `span/1`, `span/2` and `span/3` functions.

```elixir
defmodule MyModule do
  use HatchTracing

  def my_function do
    span do
      # ... some code here
    end
  end
end
```

## Installation

The package can be installed by adding `hatch_tracing` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:hatch_tracing, "~> 0.1.0"}
  ]
end
```

The docs can be found at <https://hexdocs.pm/hatch_tracing>.
