defmodule HelloPhoenix.MessageView do
  use HelloPhoenix.Web, :view

  def render("index.json", %{messages: messages}) do
    # messagesの各messageを下記のmessage.jsonで表示する
    %{messages: render_many(messages, HelloPhoenix.MessageView, "message.json")}
  end

  def render("message.json", %{message: message}) do
    # messageのid, content, messageのuserのemail をJSON形式で表示する
    %{id: message.id, body: message.content, user: message.user.email}
  end
end