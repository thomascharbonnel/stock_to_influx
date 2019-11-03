defmodule StockToInfluxTest do
  use ExUnit.Case
  doctest StockToInflux

  test "updates the timeseries when there was nothing before" do
    StockToInflux.update_stock("VOO")
    "SELECT * FROM stock" |> # TODO MyConnection.query sth
  end

  test "updates the timeseries when there was data before" do
  end

  test "greets the world" do
    assert StockToInflux.hello() == :world
  end
end
