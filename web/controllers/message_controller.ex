defmodule HelloPhoenix.MessageController do
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.Repo
  alias HelloPhoenix.Message

  @doc """
  メッセージ一覧取得API
  """
  def index(conn, _params) do
    # すべてのメッセージを取得。userも一緒にロードしておく
    messages = Repo.all(Message) |> Repo.preload(:user)
    render conn, :index, messages: messages
  end

  # TODO: authentication（本記事で実施しない）
end