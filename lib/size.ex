defmodule Size do
  @moduledoc """
  Size provides a set of functions to facilitate working with file sizes.

  ## Specifying file sizes

      iex> Size.kilobytes(1)
      1024

      iex> Size.megabytes(2.3)
      2411725

      iex> Size.gigabytes(1)
      1073741824

  ## Humanizing file sizes

      iex> Size.humanize(1073741824)
      {:ok, "1 GB"}

      iex> Size.humanize(1024, spacer: "")
      {:ok, "1KB"}

      iex> Size.humanize!(1073741824)
      "1 GB"

      iex> Size.humanize!(500, bits: true)
      "4 Kb"

  """

  @doc """
  Returns the value in bytes.

  ## Examples

      iex> Size.bytes(2)
      2

      iex> Size.bytes(2.1)
      3

      iex> Size.bytes(2.8)
      3

  """
  @spec bytes(number) :: integer
  defmacro bytes(bytes) when is_float(bytes) do
    round Float.ceil(bytes)
  end

  defmacro bytes(bytes) when is_integer(bytes) do
    bytes
  end

  @doc """
  Returns an input value in kilobytes to bytes.

  ## Examples

      iex> Size.kilobytes(1)
      1024

      iex> Size.kilobytes(2)
      2048

      iex> Size.kilobytes(2.3)
      2356

  """
  @spec kilobytes(number) :: integer
  defmacro kilobytes(kilobytes) when is_float(kilobytes) do
    round Float.ceil(kilobytes * 1024)
  end

  defmacro kilobytes(kilobytes) when is_integer(kilobytes) do
    kilobytes * 1024
  end

  @doc """
  Returns an input value in megabytes to bytes.

  ## Examples

      iex> Size.megabytes(1)
      1048576

      iex> Size.megabytes(2)
      2097152

      iex> Size.megabytes(2.1)
      2202010

  """
  @spec megabytes(number) :: integer
  defmacro megabytes(megabytes) when is_float(megabytes) do
    round Float.ceil(megabytes * 1024 * 1024)
  end

  defmacro megabytes(megabytes) when is_integer(megabytes) do
    megabytes * 1024 * 1024
  end

  @doc """
  Returns an input value in gigabytes to bytes.

  ## Examples

      iex> Size.gigabytes(1)
      1073741824

      iex> Size.gigabytes(2)
      2147483648

      iex> Size.gigabytes(2.3)
      2469606196

  """
  @spec gigabytes(number) :: integer
  defmacro gigabytes(gigabytes) when is_float(gigabytes) do
    round Float.ceil(gigabytes * 1024 * 1024 * 1024)
  end

  defmacro gigabytes(gigabytes) when is_integer(gigabytes) do
    gigabytes * 1024 * 1024 * 1024
  end

  @doc """
  Returns an input value in terabytes to bytes.

  ## Examples

      iex> Size.terabytes(1)
      1099511627776

      iex> Size.terabytes(2)
      2199023255552

      iex> Size.terabytes(2.1)
      2308974418330

  """
  @spec terabytes(number) :: integer
  defmacro terabytes(terabytes) when is_float(terabytes) do
    round Float.ceil(terabytes * 1024 * 1024 * 1024 * 1024)
  end

  defmacro terabytes(terabytes) when is_integer(terabytes) do
    terabytes * 1024 * 1024 * 1024 * 1024
  end

  @doc """
  Returns an input value in petabytes to bytes.

  ## Examples

      iex> Size.petabytes(1)
      1125899906842624

      iex> Size.petabytes(2)
      2251799813685248

      iex> Size.petabytes(2.1)
      2364389804369511

  """
  @spec petabytes(number) :: integer
  defmacro petabytes(petabytes) when is_float(petabytes) do
    round Float.ceil(petabytes * 1024 * 1024 * 1024 * 1024 * 1024)
  end

  defmacro petabytes(petabytes) when is_integer(petabytes) do
    petabytes * 1024 * 1024 * 1024 * 1024 * 1024
  end

  @doc """
  Returns an input value in exabytes to bytes.

  ## Examples

      iex> Size.exabytes(1)
      1152921504606846976

      iex> Size.exabytes(2)
      2305843009213693952

      iex> Size.exabytes(2.1)
      2421135159674378752

  """
  @spec exabytes(number) :: integer
  defmacro exabytes(exabytes) when is_float(exabytes) do
    round Float.ceil(exabytes * 1024 * 1024 * 1024 * 1024 * 1024 * 1024)
  end

  defmacro exabytes(exabytes) when is_integer(exabytes) do
    exabytes * 1024 * 1024 * 1024 * 1024 * 1024 * 1024
  end

  @doc """
  Returns an input value in zettabytes to bytes.

  ## Examples

      iex> Size.zettabytes(1)
      1180591620717411303424

      iex> Size.zettabytes(2)
      2361183241434822606848

      iex> Size.zettabytes(2.1)
      2479242403506563842048

  """
  @spec zettabytes(number) :: integer
  defmacro zettabytes(zettabytes) when is_float(zettabytes) do
    round Float.ceil(zettabytes * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024)
  end

  defmacro zettabytes(zettabytes) when is_integer(zettabytes) do
    zettabytes * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024
  end

  @doc """
  Returns an input value in yottabytes to bytes.

  ## Examples

      iex> Size.yottabytes(1)
      1208925819614629174706176

      iex> Size.yottabytes(2)
      2417851639229258349412352

      iex> Size.yottabytes(2.1)
      2538744221190721374257152

  """
  @spec yottabytes(number) :: integer
  defmacro yottabytes(yottabytes) when is_float(yottabytes) do
    round Float.ceil(yottabytes * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024)
  end

  defmacro yottabytes(yottabytes) when is_integer(yottabytes) do
    yottabytes * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024 * 1024
  end

  @doc """
  Returns the value in bits.

      iex> Size.bits(1)
      1

      iex> Size.bits(2.1)
      3

      iex> Size.bits(2.8)
      3

  """
  @spec bits(number) :: integer
  defmacro bits(bits) when is_float(bits) do
    round Float.ceil(bits)
  end

  defmacro bits(bits) when is_integer(bits) do
    bits
  end

  @doc """
  Returns an input value in kilobits to bits.

      iex> Size.kilobits(1)
      1000

      iex> Size.kilobits(2)
      2000

      iex> Size.kilobits(2.1)
      2100

  """
  @spec kilobits(number) :: integer
  defmacro kilobits(kilobits) when is_float(kilobits) do
    round Float.ceil(kilobits * 1000)
  end

  defmacro kilobits(kilobits) when is_integer(kilobits) do
    kilobits * 1000
  end

  @doc """
  Returns an input value in megabits to bits.

      iex> Size.megabits(1)
      1000000

      iex> Size.megabits(2)
      2000000

      iex> Size.megabits(2.1)
      2100000

  """
  @spec megabits(number) :: integer
  defmacro megabits(megabits) when is_float(megabits) do
    round Float.ceil(megabits * 1000 * 1000)
  end

  defmacro megabits(megabits) when is_integer(megabits) do
    megabits * 1000 * 1000
  end

  @doc """
  Returns an input value in gigabits to bits.

      iex> Size.gigabits(1)
      1000000000

      iex> Size.gigabits(2)
      2000000000

      iex> Size.gigabits(2.1)
      2100000000

  """
  @spec gigabits(number) :: integer
  defmacro gigabits(gigabits) when is_float(gigabits) do
    round Float.ceil(gigabits * 1000 * 1000 * 1000)
  end

  defmacro gigabits(gigabits) when is_integer(gigabits) do
    gigabits * 1000 * 1000 * 1000
  end

  @doc """
  Returns an input value in terabits to bits.

      iex> Size.terabits(1)
      1000000000000

      iex> Size.terabits(2)
      2000000000000

      iex> Size.terabits(2.1)
      2100000000000

  """
  @spec terabits(number) :: integer
  defmacro terabits(terabits) when is_float(terabits) do
    round Float.ceil(terabits * 1000 * 1000 * 1000 * 1000)
  end

  defmacro terabits(terabits) when is_integer(terabits) do
    terabits * 1000 * 1000 * 1000 * 1000
  end

  @doc """
  Returns an input value in petabits to bits.

      iex> Size.petabits(1)
      1000000000000000

      iex> Size.petabits(2)
      2000000000000000

      iex> Size.petabits(2.1)
      2100000000000000

  """
  @spec petabits(number) :: integer
  defmacro petabits(petabits) when is_float(petabits) do
    round Float.ceil(petabits * 1000 * 1000 * 1000 * 1000 * 1000)
  end

  defmacro petabits(petabits) when is_integer(petabits) do
    petabits * 1000 * 1000 * 1000 * 1000 * 1000
  end

  @doc """
  Returns an input value in exabits to bits.

      iex> Size.exabits(1)
      1000000000000000000

      iex> Size.exabits(2)
      2000000000000000000

      iex> Size.exabits(2.1)
      2100000000000000000

  """
  @spec exabits(number) :: integer
  defmacro exabits(exabits) when is_float(exabits) do
    round Float.ceil(exabits * 1000 * 1000 * 1000 * 1000 * 1000 * 1000)
  end

  defmacro exabits(exabits) when is_integer(exabits) do
    exabits * 1000 * 1000 * 1000 * 1000 * 1000 * 1000
  end

  @doc """
  Returns an input value in zettabits to bits.

      iex> Size.zettabits(1)
      1000000000000000000000

      iex> Size.zettabits(2)
      2000000000000000000000

      iex> Size.zettabits(2.1)
      2100000000000000000000

  """
  @spec zettabits(number) :: integer
  defmacro zettabits(zettabits) when is_float(zettabits) do
    round Float.ceil(zettabits * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000)
  end

  defmacro zettabits(zettabits) when is_integer(zettabits) do
    zettabits * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000
  end

  @doc """
  Returns an input value in yottabits to bits.

      iex> Size.yottabits(1)
      1000000000000000000000000

      iex> Size.yottabits(2)
      2000000000000000000000000

      iex> Size.yottabits(2.1)
      2100000000000000125829120

  """
  @spec yottabits(number) :: integer
  defmacro yottabits(yottabits) when is_float(yottabits) do
    round Float.ceil(yottabits * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000)
  end

  defmacro yottabits(yottabits) when is_integer(yottabits) do
    yottabits * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000 * 1000
  end

  @type humanize_output :: {number, String.t} | %{value: number, symbol: String.t} | String.t

  @default_bits false
  @default_round 2
  @default_output :string
  @default_spacer " "
  @default_symbols %{
    bits:  ~w(b Kb Mb Gb Tb Pb Eb Zb Yb),
    bytes: ~w(B KB MB GB TB PB EB ZB YB)
  }

  @ceil %{bits:  1000, bytes: 1024}
  @exponent_limit length(@default_symbols[:bits]) - 1

  defmodule SizeTooBigError do
    defexception message: "size too big to be calculated"
  end

  defmodule InvalidOutputError do
    defexception message: "invalid output argument"
  end

  @doc """
  Returns `{:ok, string}`, where `string` is the humanized version of the `size` parameter or
  `{:error, reason}` if an error occurs.

  `size` must be an integer indicating a number of bytes to be humanized.

  Error reasons:

    * `:size_too_big` - the number specified by the `size` parameter is too big to be humanized.
    * `:invalid_output_option` - the value specified on the optional parameter `:output` is not valid.

  ## Options

  The accepted options are:

    * `:bits` - specifies whether the output will use bits instead of bytes (default: `false`)
    * `:round` - specifies using an integer the round to be done to the result value (default: 2)
    * `:output` - specifies the ouput type to be used (default: `:string`)
    * `:spacer` - specifies using a string the spacer to use between the value and the symbol (default: `" "`)
    * `:symbols` - specifies a list of 9 string symbols to be used instead of the default one

  The values for `:bits` can be:

    * `true` - the output will use bits instead of bytes
    * `false` - the output will use bytes (default)

  The values for `:output` can be:

    * `:tuple` - the output will include a tuple like `{1024, KB}`
    * `:map` - the output will include a map like `{value: 1024, symbol: "KB"}`
    * `:string` - the output will include a string like `"1024 KB"` (default)

  ## Examples

      iex> Size.humanize(500)
      {:ok, "500 B"}

      iex> Size.humanize(1024)
      {:ok, "1 KB"}

      iex> Size.humanize(1024, spacer: "")
      {:ok, "1KB"}

      iex> Size.humanize(1024, output: :tuple)
      {:ok, {1, "KB"}}

      iex> Size.humanize(1024, output: :map)
      {:ok, %{value: 1, symbol: "KB"}}

  ## Examples that will return an error

      iex> Size.humanize(9999999999999999999999999999)
      {:error, :size_too_big}

      iex> Size.humanize(500, output: :not_valid_output)
      {:error, :invalid_output_option}

  """
  @spec humanize(integer, keyword) :: {:ok, humanize_output} | {:error, atom}
  def humanize(size, options \\ []) when is_integer(size) do
    try do
      {:ok, humanize!(size, options)}
    rescue
      SizeTooBigError -> {:error, :size_too_big}
      InvalidOutputError -> {:error, :invalid_output_option}
    end
  end

  @doc """
  Returns a string with the humanized version of the `size` parameter or an exception is raised
  if an error occurs.

  `size` must be an integer indicating a number of bytes to be humanized.

  Exceptions:

    * `SizeTooBigError` - the number specified by the `size` parameter is too big to be humanized
    * `InvalidOutputError` -  the value specified on the optional parameter `:output` is not valid

  ## Options

  The accepted options are:

    * `:bits` - specifies whether the output will use bits instead of bytes (default: `false`)
    * `:round` - specifies using an integer the round to be done to the result value (default: 2)
    * `:output` - specifies the ouput type to be used (default: `:string`)
    * `:spacer` - specifies using a string the spacer to use between the value and the symbol (default: `" "`)
    * `:symbols` - specifies a list of 9 string symbols to be used instead of the default one

  The values for `:bits` can be:

    * `true` - the output will use bits instead of bytes
    * `false` - the output will use bytes (default)

  The values for `:output` can be:

    * `:tuple` - the output will include a tuple like `{1024, KB}`
    * `:map` - the output will include a map like `{value: 1024, symbol: "KB"}`
    * `:string` - the output will include a string like `"1024 KB"` (default)

  ## Examples

      iex> Size.humanize!(500)
      "500 B"

      iex> Size.humanize!(1024)
      "1 KB"

      iex> Size.humanize!(1024, spacer: "")
      "1KB"

      iex> Size.humanize!(1024, output: :tuple)
      {1, "KB"}

      iex> Size.humanize!(1024, output: :map)
      %{value: 1, symbol: "KB"}

  ## Examples that will return an exception

      iex> Size.humanize!(9999999999999999999999999999)
      ** (Size.SizeTooBigError) `9999999999999999999999999999` size argument is out of the limits to be humanized

      iex> Size.humanize!(500, output: :not_valid_output)
      ** (Size.InvalidOutputError) `not_valid_output` is not a valid output type

  """
  @spec humanize!(integer, keyword) :: humanize_output
  def humanize!(size, options \\ []) when is_integer(size) do
    bits = Keyword.get(options, :bits, @default_bits)
    round = Keyword.get(options, :round, @default_round)
    output = Keyword.get(options, :output, @default_output)
    spacer = Keyword.get(options, :spacer, @default_spacer)
    symbols = Keyword.get_lazy options, :symbols, fn ->
      if bits, do: @default_symbols[:bits], else: @default_symbols[:bytes]
    end

    size = if bits, do: size * 8, else: size
    ceil = if bits, do: @ceil[:bits], else: @ceil[:bytes]
    exponent = exponent(size, ceil)
    result = result(size, exponent, ceil, round)
    symbol = Enum.at(symbols, exponent)

    case output do
      :tuple ->
        {result, symbol}
      :map ->
        %{value: result, symbol: symbol}
      :string ->
        "#{result}#{spacer}#{symbol}"
      _ ->
        raise InvalidOutputError, message: "`#{output}` is not a valid output type"
    end
  end

  defp exponent(0, _ceil), do: 0
  defp exponent(size, ceil) do
    exponent = :math.log(abs(size)) / :math.log(ceil) |> Float.floor |> round

    if exponent > @exponent_limit do
      raise SizeTooBigError, message: "`#{size}` size argument is out of the limits to be humanized"
    else
      exponent
    end
  end

  defp result(size, exponent, ceil, round) do
    result = size / :math.pow(ceil, exponent) |> Float.round(round)

    if round(result) == result, do: round(result), else: result
  end
end
