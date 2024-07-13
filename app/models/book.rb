class Book < ApplicationRecord
  #バリデーションの設定
  #validatesで対象とする項目を指定し、
  #入力されたデータのpresence（存在）をチェック
  # trueを記述するとデータが存在しなければいけないという設定になる
  validates :title, presence: true
  validates :body, presence: true
end
