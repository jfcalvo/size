defmodule SizeTest do
  use ExUnit.Case, async: true
  doctest Size

  test "macros" do
    assert Size.bytes(1) == 1
    assert Size.kilobytes(1) == 1024
    assert Size.megabytes(1) == 1048576
    assert Size.gigabytes(1) == 1073741824
    assert Size.terabytes(1) == 1099511627776
    assert Size.petabytes(1) == 1125899906842624
    assert Size.exabytes(1) == 1152921504606846976
    assert Size.zettabytes(1) == 1180591620717411303424
    assert Size.yottabytes(1) == 1208925819614629174706176

    assert Size.bytes(2) == 2
    assert Size.bytes(3.2) == 4
    assert Size.kilobytes(2) == 2048
    assert Size.kilobytes(2.3) == 2356
    assert Size.megabytes(4) == 4194304
    assert Size.megabytes(1.6) == 1677722
    assert Size.gigabytes(3) == 3221225472
    assert Size.gigabytes(4.2) == 4509715661
    assert Size.terabytes(3) == 3298534883328
    assert Size.terabytes(12.1) == 13304090696090
    assert Size.petabytes(4) == 4503599627370496
    assert Size.petabytes(3.6) == 4053239664633447
    assert Size.exabytes(6) == 6917529027641081856
    assert Size.exabytes(3.9) == 4496393867966703104
    assert Size.zettabytes(2) == 2361183241434822606848
    assert Size.zettabytes(3.1) == 3659834024223975145472

    assert Size.bits(1) == 1
    assert Size.kilobits(1) == 1000
    assert Size.megabits(1) == 1000000
    assert Size.gigabits(1) == 1000000000
    assert Size.terabits(1) == 1000000000000
    assert Size.petabits(1) == 1000000000000000
    assert Size.exabits(1) == 1000000000000000000
    assert Size.zettabits(1) == 1000000000000000000000
    assert Size.yottabits(1) == 1000000000000000000000000

    assert Size.bits(4) == 4
    assert Size.bits(2.3) == 3
    assert Size.kilobits(3) == 3000
    assert Size.kilobits(3.1234) == 3124
    assert Size.megabits(2) == 2000000
    assert Size.megabits(2.3333333) == 2333334
    assert Size.gigabits(3) == 3000000000
    assert Size.gigabits(3.2234567893) == 3223456790
    assert Size.terabits(2) == 2000000000000
    assert Size.terabits(2.523478365) == 2523478365000
    assert Size.petabits(3) == 3000000000000000
    assert Size.petabits(3.432548343281542) == 3432548343281543
    assert Size.exabits(4) == 4000000000000000000
    assert Size.exabits(4.532) == 4532000000000000000
    assert Size.zettabits(2) == 2000000000000000000000
    assert Size.zettabits(2.54) == 2540000000000000000000
    assert Size.yottabits(4) == 4000000000000000000000000
    assert Size.yottabits(4.32) == 4319999999999999798673408
  end

  test "bytes" do
    assert Size.humanize!(0) == "0 B"
    assert Size.humanize!(1) == "1 B"
    assert Size.humanize!(100) == "100 B"
    assert Size.humanize!(500) == "500 B"
    assert Size.humanize!(1023) == "1023 B"

    assert Size.humanize(0) == {:ok, "0 B"}
    assert Size.humanize(1) == {:ok, "1 B"}
    assert Size.humanize(100) == {:ok, "100 B"}
    assert Size.humanize(500) == {:ok, "500 B"}
    assert Size.humanize(1023) == {:ok, "1023 B"}
  end

  test "kilobytes" do
    assert Size.humanize!(1024) == "1 KB"
    assert Size.humanize!(2000) == "1.95 KB"
    assert Size.humanize!(2048) == "2 KB"
    assert Size.humanize!(2348) == "2.29 KB"
    assert Size.humanize!(265318) == "259.1 KB"

    assert Size.humanize(1024) == {:ok, "1 KB"}
    assert Size.humanize(2000) == {:ok, "1.95 KB"}
    assert Size.humanize(2048) == {:ok, "2 KB"}
    assert Size.humanize(2348) == {:ok, "2.29 KB"}
    assert Size.humanize(265318) == {:ok, "259.1 KB"}
  end

  test "megabytes" do
    assert Size.humanize!(1048576) == "1 MB"
    assert Size.humanize!(1468006) == "1.4 MB"
    assert Size.humanize!(1509949) == "1.44 MB"
    assert Size.humanize!(2621440) == "2.5 MB"
    assert Size.humanize!(2673868) == "2.55 MB"

    assert Size.humanize(1048576) == {:ok, "1 MB"}
    assert Size.humanize(1468006) == {:ok, "1.4 MB"}
    assert Size.humanize(1509949) == {:ok, "1.44 MB"}
    assert Size.humanize(2621440) == {:ok, "2.5 MB"}
    assert Size.humanize(2673868) == {:ok, "2.55 MB"}
  end

  test "gigabytes" do
    assert Size.humanize!(1073741824) == "1 GB"
    assert Size.humanize!(1273741824) == "1.19 GB"
    assert Size.humanize!(2147483648) == "2 GB"
    assert Size.humanize!(2565464654) == "2.39 GB"
    assert Size.humanize!(2684354560) == "2.5 GB"

    assert Size.humanize(1073741824) == {:ok, "1 GB"}
    assert Size.humanize(1273741824) == {:ok, "1.19 GB"}
    assert Size.humanize(2147483648) == {:ok, "2 GB"}
    assert Size.humanize(2565464654) == {:ok, "2.39 GB"}
    assert Size.humanize(2684354560) == {:ok, "2.5 GB"}
  end

  test "terabytes" do
    assert Size.humanize!(1099511627776) == "1 TB"
    assert Size.humanize!(2199023255552) == "2 TB"
    assert Size.humanize!(2748779069440) == "2.5 TB"
    assert Size.humanize!(2803754650828) == "2.55 TB"
    assert Size.humanize!(4145158836715) == "3.77 TB"

    assert Size.humanize(1099511627776) == {:ok, "1 TB"}
    assert Size.humanize(2199023255552) == {:ok, "2 TB"}
    assert Size.humanize(2748779069440) == {:ok, "2.5 TB"}
    assert Size.humanize(2803754650828) == {:ok, "2.55 TB"}
    assert Size.humanize(4145158836715) == {:ok, "3.77 TB"}
  end

  test "petabytes" do
    assert Size.humanize!(1125899906842624) == "1 PB"
    assert Size.humanize!(2251799813685248) == "2 PB"
    assert Size.humanize!(2871044762448691) == "2.55 PB"
    assert Size.humanize!(2690900777353871) == "2.39 PB"
    assert Size.humanize!(3002399751505270) == "2.67 PB"

    assert Size.humanize(1125899906842624) == {:ok, "1 PB"}
    assert Size.humanize(2251799813685248) == {:ok, "2 PB"}
    assert Size.humanize(2871044762448691) == {:ok, "2.55 PB"}
    assert Size.humanize(2690900777353871) == {:ok, "2.39 PB"}
    assert Size.humanize(3002399751505270) == {:ok, "2.67 PB"}
  end

  test "exabytes" do
    assert Size.humanize!(1152921504606846976) == "1 EB"
    assert Size.humanize!(2305843009213694000) == "2 EB"
    assert Size.humanize!(2818893078763740700) == "2.44 EB"
    assert Size.humanize!(2939949836747459600) == "2.55 EB"
    assert Size.humanize!(3712407244834047500) == "3.22 EB"

    assert Size.humanize(1152921504606846976) == {:ok, "1 EB"}
    assert Size.humanize(2305843009213694000) == {:ok, "2 EB"}
    assert Size.humanize(2818893078763740700) == {:ok, "2.44 EB"}
    assert Size.humanize(2939949836747459600) == {:ok, "2.55 EB"}
    assert Size.humanize(3712407244834047500) == {:ok, "3.22 EB"}
  end

  test "zettabytes" do
    assert Size.humanize!(1180591620717411303424) == "1 ZB"
    assert Size.humanize!(2361183241434822606848) == "2 ZB"
    assert Size.humanize!(3361183241434822606848) == "2.85 ZB"
    assert Size.humanize!(3541774862152233910272) == "3 ZB"
    assert Size.humanize!(3641774862152233910272) == "3.08 ZB"

    assert Size.humanize(1180591620717411303424) == {:ok, "1 ZB"}
    assert Size.humanize(2361183241434822606848) == {:ok, "2 ZB"}
    assert Size.humanize(3361183241434822606848) == {:ok, "2.85 ZB"}
    assert Size.humanize(3541774862152233910272) == {:ok, "3 ZB"}
    assert Size.humanize(3641774862152233910272) == {:ok, "3.08 ZB"}
  end

  test "yottabytes" do
    assert Size.humanize!(1208925819614629174706176) == "1 YB"
    assert Size.humanize!(2208925819614629174706176) == "1.83 YB"
    assert Size.humanize!(6208925819614629174706176) == "5.14 YB"
    assert Size.humanize!(9208925819614629174706176) == "7.62 YB"
    assert Size.humanize!(9608925819614629174706176) == "7.95 YB"

    assert Size.humanize(1208925819614629174706176) == {:ok, "1 YB"}
    assert Size.humanize(2208925819614629174706176) == {:ok, "1.83 YB"}
    assert Size.humanize(6208925819614629174706176) == {:ok, "5.14 YB"}
    assert Size.humanize(9208925819614629174706176) == {:ok, "7.62 YB"}
    assert Size.humanize(9608925819614629174706176) == {:ok, "7.95 YB"}
  end

  test "size too big" do
    assert_raise Size.SizeTooBigError, fn ->
      Size.humanize!(1237940039285380274899124224)
    end

    assert Size.humanize(1237940039285380274899124224) == {:error, :size_too_big}
  end

  test "negative sizes" do
    assert Size.humanize!(-0) == "0 B"
    assert Size.humanize!(-500) == "-500 B"
    assert Size.humanize!(-1024) == "-1 KB"
    assert Size.humanize!(-1048576) == "-1 MB"
    assert Size.humanize!(-1468006) == "-1.4 MB"
    assert Size.humanize!(-1073741824) == "-1 GB"
    assert Size.humanize!(-1273741824) == "-1.19 GB"
    assert Size.humanize!(-1099511627776) == "-1 TB"
    assert Size.humanize!(-2199023255552) == "-2 TB"
    assert Size.humanize!(-2748779069440) == "-2.5 TB"
    assert Size.humanize!(-1125899906842624) == "-1 PB"
    assert Size.humanize!(-1152921504606846976) == "-1 EB"
    assert Size.humanize!(-1180591620717411303424) == "-1 ZB"
    assert Size.humanize!(-1208925819614629174706176) == "-1 YB"
  end

  test "using multiple options" do
    assert Size.humanize!(500) == "500 B"
    assert Size.humanize!(500, round: 1) == "500 B"
    assert Size.humanize!(500, round: 1, spacer: "") == "500B"
    assert Size.humanize!(500, bits: true) == "4 Kb"
    assert Size.humanize!(500, round: 1, bits: true) == "4 Kb"
    assert Size.humanize!(500, round: 1, bits: true, spacer: "") == "4Kb"
    assert Size.humanize!(500, round: 1, bits: true, spacer: "", output: :string) == "4Kb"
    assert Size.humanize!(500, round: 1, bits: true, spacer: "", output: :tuple) == {4, "Kb"}
    assert Size.humanize!(500, round: 1, bits: true, spacer: "", output: :map) == %{value: 4, symbol: "Kb"}

    assert Size.humanize!(1023) == "1023 B"
    assert Size.humanize!(1023, round: 1) == "1023 B"
    assert Size.humanize!(1023, round: 1, spacer: "") == "1023B"
    assert Size.humanize!(1023, bits: true) == "8.18 Kb"
    assert Size.humanize!(1023, round: 1, bits: true) == "8.2 Kb"
    assert Size.humanize!(1023, round: 1, bits: true, spacer: "") == "8.2Kb"
    assert Size.humanize!(1023, round: 1, bits: true, spacer: "", output: :string) == "8.2Kb"
    assert Size.humanize!(1023, round: 1, bits: true, spacer: "", output: :tuple) == {8.2, "Kb"}
    assert Size.humanize!(1023, round: 1, bits: true, spacer: "", output: :map) == %{value: 8.2, symbol: "Kb"}

    assert Size.humanize!(1024) == "1 KB"
    assert Size.humanize!(1024, round: 1) == "1 KB"
    assert Size.humanize!(1024, round: 1, spacer: "") == "1KB"
    assert Size.humanize!(1024, bits: true) == "8.19 Kb"
    assert Size.humanize!(1024, round: 1, bits: true) == "8.2 Kb"
    assert Size.humanize!(1024, round: 1, bits: true, spacer: "") == "8.2Kb"
    assert Size.humanize!(1024, round: 1, bits: true, spacer: "", output: :string) == "8.2Kb"
    assert Size.humanize!(1024, round: 1, bits: true, spacer: "", output: :tuple) == {8.2, "Kb"}
    assert Size.humanize!(1024, round: 1, bits: true, spacer: "", output: :map) == %{value: 8.2, symbol: "Kb"}

    assert Size.humanize!(-1024) == "-1 KB"
    assert Size.humanize!(-1024, round: 1) == "-1 KB"
    assert Size.humanize!(-1024, round: 1, spacer: "") == "-1KB"
    assert Size.humanize!(-1024, bits: true) == "-8.19 Kb"
    assert Size.humanize!(-1024, round: 1, bits: true) == "-8.2 Kb"
    assert Size.humanize!(-1024, round: 1, bits: true, spacer: "") == "-8.2Kb"
    assert Size.humanize!(-1024, round: 1, bits: true, spacer: "", output: :string) == "-8.2Kb"
    assert Size.humanize!(-1024, round: 1, bits: true, spacer: "", output: :tuple) == {-8.2, "Kb"}
    assert Size.humanize!(-1024, round: 1, bits: true, spacer: "", output: :map) == %{value: -8.2, symbol: "Kb"}

    assert Size.humanize!(1) == "1 B"
    assert Size.humanize!(1, round: 1) == "1 B"
    assert Size.humanize!(1, round: 1, spacer: "") == "1B"
    assert Size.humanize!(1, bits: true) == "8 b"
    assert Size.humanize!(1, round: 1, bits: true) == "8 b"
    assert Size.humanize!(1, round: 1, bits: true, spacer: "") == "8b"
    assert Size.humanize!(1, round: 1, bits: true, spacer: "", output: :string) == "8b"
    assert Size.humanize!(1, round: 1, bits: true, spacer: "", output: :tuple) == {8, "b"}
    assert Size.humanize!(1, round: 1, bits: true, spacer: "", output: :map) == %{value: 8, symbol: "b"}

    assert Size.humanize!(0) == "0 B"
    assert Size.humanize!(0, round: 1) == "0 B"
    assert Size.humanize!(0, round: 1, spacer: "") == "0B"
    assert Size.humanize!(0, bits: true) == "0 b"
    assert Size.humanize!(0, round: 1, bits: true) == "0 b"
    assert Size.humanize!(0, round: 1, bits: true, spacer: "") == "0b"
    assert Size.humanize!(0, round: 1, bits: true, spacer: "", output: :string) == "0b"
    assert Size.humanize!(0, round: 1, bits: true, spacer: "", output: :tuple) == {0, "b"}
    assert Size.humanize!(0, round: 1, bits: true, spacer: "", output: :map) == %{value: 0, symbol: "b"}
  end

  test "bits options" do
    assert Size.humanize!(125, bits: true) == "1 Kb"
    assert Size.humanize!(250, bits: true) == "2 Kb"
    assert Size.humanize!(500, bits: true) == "4 Kb"
    assert Size.humanize!(555, bits: true) == "4.44 Kb"
    assert Size.humanize!(125000, bits: true) == "1 Mb"
    assert Size.humanize!(250000, bits: true) == "2 Mb"
    assert Size.humanize!(292500, bits: true) == "2.34 Mb"
  end

  test "round option" do
    assert Size.humanize!(2000, round: 0) == "2 KB"
    assert Size.humanize!(2000, round: 1) == "2 KB"
    assert Size.humanize!(2000, round: 2) == "1.95 KB"
    assert Size.humanize!(2000, round: 3) == "1.953 KB"
    assert Size.humanize!(265318, round: 0) == "259 KB"
    assert Size.humanize!(265318, round: 1) == "259.1 KB"
    assert Size.humanize!(265318, round: 2) == "259.1 KB"
    assert Size.humanize!(265318, round: 3) == "259.1 KB"
    assert Size.humanize!(1509949, round: 1) == "1.4 MB"
    assert Size.humanize!(1509949, round: 2) == "1.44 MB"
    assert Size.humanize!(2684354560, round: 0) == "3 GB"
    assert Size.humanize!(2684354560, round: 1) == "2.5 GB"
    assert Size.humanize!(2684354560, round: 2) == "2.5 GB"
  end

  test "symbols option" do
    symbols = ~w(bytes kilobytes megabytes gigabytes terabytes petabytes exabytes zettabytes yottabytes)

    assert Size.humanize!(0, symbols: symbols) == "0 bytes"
    assert Size.humanize!(100, symbols: symbols) == "100 bytes"
    assert Size.humanize!(1024, symbols: symbols) == "1 kilobytes"
    assert Size.humanize!(1048576, symbols: symbols) == "1 megabytes"
    assert Size.humanize!(1073741824, symbols: symbols) == "1 gigabytes"
    assert Size.humanize!(1099511627776, symbols: symbols) == "1 terabytes"
    assert Size.humanize!(1125899906842624, symbols: symbols) == "1 petabytes"
    assert Size.humanize!(1152921504606846976, symbols: symbols) == "1 exabytes"
    assert Size.humanize!(1180591620717411303424, symbols: symbols) == "1 zettabytes"
    assert Size.humanize!(1208925819614629174706176, symbols: symbols) == "1 yottabytes"
  end

  test "spacer option" do
    assert Size.humanize!(1024, spacer: " ~ ") == "1 ~ KB"
    assert Size.humanize!(2000, spacer: "-") == "1.95-KB"
    assert Size.humanize!(100, spacer: "") == "100B"
  end

  test "string output option" do
    assert Size.humanize!(1024, output: :string) == "1 KB"
    assert Size.humanize!(2000, output: :string) == "1.95 KB"
  end

  test "tuple output option" do
    assert Size.humanize!(1024, output: :tuple) == {1, "KB"}
    assert Size.humanize!(2000, output: :tuple) == {1.95, "KB"}
  end

  test "map output option" do
    assert Size.humanize!(1024, output: :map) == %{value: 1, symbol: "KB"}
    assert Size.humanize!(2000, output: :map) == %{value: 1.95, symbol: "KB"}
  end

  test "invalid output option" do
    assert_raise Size.InvalidOutputError, fn ->
      Size.humanize!(1, output: :invalid_output)
    end

    assert Size.humanize(1, output: :invalid_output) == {:error, :invalid_output_option}
  end
end
