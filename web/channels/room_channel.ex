defmodule HelloPhoenix.RoomChannel do
  use Phoenix.Channel

  # "rooms:lobby"トピックのjoin関数
  # {:ok, socket} を返すだけなのですべてのクライアントが接続可能
  def join("rooms:lobby", message, socket) do
    {:ok, socket}
  end
end