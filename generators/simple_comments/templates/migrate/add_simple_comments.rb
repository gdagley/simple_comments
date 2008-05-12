class AddSimpleComments < ActiveRecord::Migration
  def self.up
    create_table :comments, :force => true do |t|
      t.string :commentable_type
      t.string :commentable_id
      t.string :name
      t.string :email
      t.string :url
      t.string :title
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
