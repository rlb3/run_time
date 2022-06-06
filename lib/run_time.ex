defmodule RunTime do
  def data do
    Application.get_env(:run_time, :data)
  end
end
