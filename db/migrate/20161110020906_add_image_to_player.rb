class AddImageToPlayer < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :image, :string
  end
end
