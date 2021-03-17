defmodule MyAppTest do
  use ExUnit.Case, async: true

  test "Conqueuer works" do
    assert Conqueuer.work(:resolvers, []) == :ok
  end
end
