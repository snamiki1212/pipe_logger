defmodule PipeLoggerTest do
  use ExUnit.Case
  doctest PipeLogger

  @test_data [1, "STRING", {1, 2}, %{1 => 2}, [1, 2]]
  test "binary list with no argument" do
    assert @test_data |> PipeLogger.debug() |> Enum.map(&(&1)) == @test_data
  end

  test "binary list with string msg" do
    assert @test_data |> PipeLogger.debug("msg") |> Enum.map(&(&1)) == @test_data
  end

  test "binary list with binary msg" do
    assert @test_data |> PipeLogger.debug(123) |> Enum.map(&(&1)) == @test_data
  end

  test "binary list with no msg and metadata" do
    assert @test_data |> PipeLogger.debug("", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "binary list with string msg and metadata" do
    assert @test_data |> PipeLogger.debug("hoge", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "binary list with binary msg and metadata" do
    assert @test_data |> PipeLogger.debug(123, label: 123) |> Enum.map(&(&1)) == @test_data
  end
end
