defmodule HelloPhoenix.SessionController do
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.User

  @doc """
  ログイン画面の表示
  """
  def new(conn, _params) do
    render conn, "new.html"
  end
end