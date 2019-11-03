defmodule StockToInflux do
  @moduledoc """
  Documentation for StockToInflux.
  """

  @doc """
  Hello world.

  ## Examples

      iex> StockToInflux.hello()
      :world

  """
  def hello do
    :world
  end

  def start do
    Application.get_env(:stock_to_influx, :basket)
    |> Enum.each(&update_stock/1)
  end

  def update_stock(identifier) do
    # Call this
    @alpha_vantage_api.get_daily_for(identifier)
    # Save it
    |> Enum.each(fn ticker -> @influx_api.save_ticker(ticker))
  end
end
