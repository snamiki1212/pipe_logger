defmodule PipeLoggerTest do
  use ExUnit.Case
  doctest PipeLogger

  @test_data [1, "STRING", {1, 2}, %{1 => 2}, [1, 2]]

  #
  # debug
  #
  test "debug with no argument" do
    assert @test_data |> PipeLogger.debug() |> Enum.map(&(&1)) == @test_data
  end

  test "debug ith string msg" do
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

  #
  # info
  #
  test "info with no argument" do
    assert @test_data |> PipeLogger.info() |> Enum.map(&(&1)) == @test_data
  end

  test "info ith string msg" do
    assert @test_data |> PipeLogger.info("msg") |> Enum.map(&(&1)) == @test_data
  end

  test "info with binary msg" do
    assert @test_data |> PipeLogger.info(123) |> Enum.map(&(&1)) == @test_data
  end

  test "info with no msg and metadata" do
    assert @test_data |> PipeLogger.info("", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "info with string msg and metadata" do
    assert @test_data |> PipeLogger.info("hoge", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "info with binary msg and metadata" do
    assert @test_data |> PipeLogger.info(123, label: 123) |> Enum.map(&(&1)) == @test_data
  end

  #
  # error
  #
  test "error with no argument" do
    assert @test_data |> PipeLogger.error() |> Enum.map(&(&1)) == @test_data
  end

  test "errorw ith string msg" do
    assert @test_data |> PipeLogger.error("msg") |> Enum.map(&(&1)) == @test_data
  end

  test "error with binary msg" do
    assert @test_data |> PipeLogger.error(123) |> Enum.map(&(&1)) == @test_data
  end

  test "error with no msg and metadata" do
    assert @test_data |> PipeLogger.error("", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "error with string msg and metadata" do
    assert @test_data |> PipeLogger.error("hoge", label: 123) |> Enum.map(&(&1)) == @test_data
  end

  test "error with binary msg and metadata" do
    assert @test_data |> PipeLogger.error(123, label: 123) |> Enum.map(&(&1)) == @test_data
  end


end
