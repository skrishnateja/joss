class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string      :name
      t.belongs_to  :user, index: true
      t.belongs_to  :issue, index: true
      t.timestamps null: false
    end
  end
end
