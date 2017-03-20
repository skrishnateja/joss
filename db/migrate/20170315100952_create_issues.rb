class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string      :name
      t.belongs_to  :user, index: true
      t.belongs_to  :paper, index: true
      t.string      :state, :default => "open"
      t.timestamps  :null => false
    end
  end
end
