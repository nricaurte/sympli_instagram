class CreateFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :followers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :follower_user, null: true ,  foreign_key: { to_table: :users }
      t.integer :state
      t.timestamps
    end

  end
end
