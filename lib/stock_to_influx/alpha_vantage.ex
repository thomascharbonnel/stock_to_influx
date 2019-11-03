defmodule StockToInflux.AlphaVantage do
  @doc """
    Gets daily data from AlphaVantage's API.
    Returns a structure with open, close, high, low, volume.
  """
  @callback get_daily_for(identifier :: String.t) :: %StockToInflux.Ticker{}
end
