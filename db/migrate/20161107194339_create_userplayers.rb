class CreateUserplayers < ActiveRecord::Migration[5.0]
  def change
    create_table :userplayers do |t|
      t.references :user, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
