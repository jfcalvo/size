# Size
Size is a Elixir library that helps you working with file sizes.

## Installation

Add `size` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:size, "~> 0.1.0"}]
end
```

And run:

```elixir
$ mix deps.get
```

## What can you do with Size?

### Specify sizes

`Size` defines a set of macros to improve specification of sizes.

Instead of define a magic number that nobody understand like:

```elixir
> disk_space = 12884901888
```

You can better do the following:

```elixir
> import Size, only: :macros
> disk_space = gigabytes(12)
```

A lot better, right?.

You can also work using bits instead of bytes:

```elixir
> import Size, only: :macros
> network_speed = megabits(3)
```

The list of macros available are:

For bytes (output always in bytes):

```elixir
bytes(bytes)
kilobytes(kilobytes)
megabytes(megabytes)
gigabytes(gigabytes)
terabytes(terabytes)
petabytes(petabytes)
exabytes(exabytes)
zettabytes(zettabytes)
yottabytes(yottabytes)
```

For bits (output always in bits):

```elixir
bits(bits)
kilobits(kilobits)
megabits(megabits)
gigabits(gigabits)
terabits(terabits)
petabits(petabits)
exabits(exabits)
zettabits(zettabits)
yottabits(yottabits)
```

#### Examples

```elixir
> bytes(2.1) # Input in bytes, output in bytes
3

> kilobytes(1) # Input in kilobytes, output in bytes
1024

> megabytes(1) # Input in megabytes, output in bytes
1048576

> megabytes(2) # Input in megabytes, output in bytes
2097152

> megabytes(2.1) # Input in megabytes, output in bytes
2202010

> gigabytes(12) # Input in gigabytes, output in bytes
12884901888

> bits(2.1) # Input in bits, output in bits
3

> kilobits(1) # Input in kilobits, output in bits
1000

> megabits(100) # Input in megabits, output in bits
100000000

> gigabits(12.5) # Input in gigabits, output in bits
12500000000
```

### Humanize file sizes

`Size` provide `humanize(size, options)` and `humanize!(size, options)` functions to generate human-readable file sizes.

```elixir
> Size.humanize(1024)
{:ok, "1 KB"}

> Size.humanize!(1024)
"1 KB"
```

`humanize` returns `{:ok, string}`, where `string` is the humanized version of the `size` parameter or  `{:error, reason}` if an error occurs.

`humanize!` returns a string with the humanized version of the `size` parameter or an exception is raised if an error occurs.

`size` input parameter should always be a integer quantity of bytes. Not floats or strings are supported.

#### Options

`humanize` allows a set of options to customize the formatting/output of the given size.

* `:bits` specifies whether the output will use bits instead of bytes (default: `false`).

  ```elixir
  > Size.humanize(1000, bits: true)
  {:ok, "8 Kb"}
  ```

* `:round` specifies using an integer the round to be done to the result value (default: `2`).

  ```elixir
  > Size.humanize(1234322, round: 1)
  {:ok, "1.2 MB"}

  > Size.humanize(1234322, round: 0)
  {:ok, "1 MB"}
  ```

* `:output` specifies the output type to be used, the possible values are `:tuple`, `:map` and `:string` (default: `:string`).

  ```elixir
  > Size.humanize(1024, output: :tuple)
  {:ok, {1, "KB"}}

  > Size.humanize(1024, output: :map)
  {:ok, %{symbol: "KB", value: 1}}

  > Size.humanize(1024, output: :string)
  {:ok, "1 KB"}

  > Size.humanize!(1024, output: :tuple)
  {1, "KB"}

  > Size.humanize!(1024, output: :map)
  %{symbol: "KB", value: 1}

  > Size.humanize!(1024, output: :string)
  "1 KB"
  ```

* `:spacer` specifies using a string the spacer to use between the value and the symbol (default: `" "`).

  ```elixir
  > Size.humanize(1024, spacer: "~")
  {:ok, "1~KB"}

  > Size.humanize(1024, spacer: "")
  {:ok, "1KB"}
  ```

* `:symbols` specifies a list of 9 string symbols to be used instead of the default one.

  ```elixir
  > alternative_symbols = ~w(bytes kilobytes megabytes gigabytes terabytes petabytes exabytes zettabytes yottabytes)
  > Size.humanize(2048, symbols: alternative_symbols)
  {:ok, "2 kilobytes"}
  ````

## Author
* **José Francisco Calvo**
