import {Socket} from "phoenix"

// チャットを行うクラス
class MySocket {

  // newのときに呼ばれるコンストラクタ
  constructor() {
    console.log("Initialized")

    // 入力フィールド
    this.$username = $("#username")
    this.$message  = $("#message")

    // 表示領域
    this.$messagesContainer = $("#messages")

    // キー入力イベントの登録
    this.$message.off("keypress").on("keypress", e => {
      if (e.keyCode === 13) { // 13: Enterキー
        // `${変数}` は式展開
        console.log(`[${this.$username.val()}]${this.$message.val()}`)
        // メッセージの入力フィールドをクリア(空)にする
        this.$message.val("")
      }
    })
  }
}

$(
  () => {
    new MySocket()
  }
)

export default MySocket