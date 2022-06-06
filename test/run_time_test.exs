defmodule RunTimeTest do
  use ExUnit.Case
  doctest RunTime

  test "greets the world" do
    assert RunTime.hello() == :world
  end
end
