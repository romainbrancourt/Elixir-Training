defmodule DoorTest do
  use ExUnit.Case
  alias Portal.Door, as: Door
  doctest Portal.Door
  setup do
    color = :orange
    {status, _} = Door.start_link(color)
    {:ok, status: status, color: color}
  end

  test "it can be started ", state do
    assert state[:status] == :ok
    assert [] = Door.get(state[:color])
  end

  test "it can receive a value", state do
    assert :ok = Door.push(state[:color], 'test')
  end

  test "it can retrieve a value", state do
    Door.push(state[:color], 'test')
    assert ['test'] = Door.get(state[:color])
  end

  test "it can pop a value", state do
    Door.push(state[:color], 'test')
    assert {:ok, 'test'} = Door.pop(state[:color]) 
  end
end
