extends CharacterBody2D # これは「このスクリプトは `CharacterBody2D` ノードを拡張しています」という宣言。
#- `CharacterBody2D` は、物理ベースの2Dキャラクター用ノード
#- `velocity` などの便利なプロパティを自動で持っている
#- `move_and_slide()` などの移動処理もビルトインで使える
const SPEED = 200 # 移動速度SPEEDを定義　左右移動の速さを表している。
const GRAVITY = 800 # ← これが重力！
const JUMP_FORCE = 400 # ← 後でジャンプにも使えます

func _physics_process(delta): # - Godot の特殊な関数（**毎フレームごとに呼ばれる処理**）
	#- `delta` は1フレームあたりの経過時間（秒） 
	#  → フレームレートに依存しない動きを作るのに使う（今回は使っていない）
	var direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	#右にどれくらい押されているのかー左にどれくらい押されているのかで、1,-1,0を判定
	velocity.x = direction * SPEED

	# ✅ 重力を加える（毎フレーム y に加算）
	velocity.y += GRAVITY * delta
	#- プレイヤーの「横方向の速度（`velocity.x`）」に、derectionに`SPEED` を掛けたものを代入して設定
	move_and_slide()
	#•	Godot が用意している「物理に沿った移動を自動で行ってくれる」関数
	#•	velocity を使って、キャラを滑らかに移動させる
	#•	障害物にぶつかれば止まるなどの挙動も含む
