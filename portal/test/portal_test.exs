defmodule PortalTest do
  use ExUnit.Case
  doctest Portal
  setup do
    # Start new doors between tests
    Portal.Door.start_link(:orange)
    Portal.Door.start_link(:blue)
    :ok
  end
  test "it can transfer data between doors" do
    portal = Portal.transfer(:orange, :blue, [1, 2, 3, 4])
    Portal.push_right(portal)
    assert [4] = Portal.Door.get(:blue)
    assert [3, 2, 1] = Portal.Door.get(:orange)
    Portal.push_left(portal)
    assert [] = Portal.Door.get(:blue)
    assert [4, 3, 2, 1] = Portal.Door.get(:orange)
  end
end
