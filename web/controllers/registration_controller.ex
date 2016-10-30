defmodule HelloPhoenix.RegistrationController do
  use HelloPhoenix.Web, :controller
  alias HelloPhoenix.User

  @doc """
  ユーザ登録画面の表示
  """
  def new(conn, _params) do
    # chnageset関数は、newメソッドのようなもので、Userのデータを返す
    changeset = User.changeset(%User{})
    # renderの第三引数に値を渡すことで、ビューやテンプレートで値を使用できる
    render conn, "new.html", changeset: changeset
  end
end
