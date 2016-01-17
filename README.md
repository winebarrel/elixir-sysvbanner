# Banner

It is Elixir sysvbanner port from https://github.com/uffejakobsen/sysvbanner.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add banner to your list of dependencies in `mix.exs`:

        def deps do
          [{:banner, "~> 0.1.0"}]
        end

  2. Ensure banner is started before your application:

        def application do
          [applications: [:banner]]
        end

## Usage

```elixir
iex(2)> IO.puts Banner.banner("hello")

 #    #  ######  #       #        ####
 #    #  #       #       #       #    #
 ######  #####   #       #       #    #
 #    #  #       #       #       #    #
 #    #  #       #       #       #    #
 #    #  ######  ######  ######   ####
:ok
```
