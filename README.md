# Banner

It is Elixir sysvbanner port from https://github.com/uffejakobsen/sysvbanner.

[![Build Status](https://travis-ci.org/winebarrel/elixir-sysvbanner.svg?branch=master)](https://travis-ci.org/winebarrel/elixir-sysvbanner)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add banner to your list of dependencies in `mix.exs`:

        def deps do
          [{:banner, "~> 0.1.0"}]
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
