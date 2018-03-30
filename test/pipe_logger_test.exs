defmodule PipeLoggerTest do
  use ExUnit.Case
  doctest PipeLogger

  @test_data [1, "STRING", {1, 2}, %{1 => 2}, [1, 2]]

  test "debug with no argument" do
    assert @test_data |> PipeLogger.debug() |> Enum.map(&(&1)) == @test_data
  end

  test "debugw ith string msg" do
    assert @test_data |> PipeLogger.debug("msg") |> Enum.map(&(&1)) == @test_data
  end

  test "debug with binary msg" do
    assert @test_data |> PipeLogger.debug(123) |> Enum.map(&(&1)) == @test_data
  end

  test "debug with no msg and metadata" do
    assert @test_data |> PipeLogger.debug("", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "debug with string msg and metadata" do
    assert @test_data |> PipeLogger.debug("hoge", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "debug with binary msg and metadata" do
    assert @test_data |> PipeLogger.debug(123, label: 123) |> Enum.map(&(&1)) == @test_data
  end
end
