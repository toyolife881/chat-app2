class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :content
      # 外部キー制約をつけることで、外部キー(user_idとroom_id)がないとDBに保存できなくなる
      t.references :user,  null: false, foreign_key: true
      t.references :room,  null: false, foreign_key: true
      t.timestamps
    end
  end
end
