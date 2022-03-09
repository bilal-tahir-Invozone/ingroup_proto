# IngroupProto

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ingroup_proto` to your list of dependencies in `mix.exs`:

```elixir
protoc --elixir_out=plugins=grpc:./lib protocol/*
```

```elixir
def deps do
  [
    {:ingroup_proto, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ingroup_proto](https://hexdocs.pm/ingroup_proto).
