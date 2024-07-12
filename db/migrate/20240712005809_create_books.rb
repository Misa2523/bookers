class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      #読んだ本の感想を投稿するサイト
      t.string :title   #本のタイトル
      t.string :body   #本の感想
      t.timestamps
    end
  end
end
