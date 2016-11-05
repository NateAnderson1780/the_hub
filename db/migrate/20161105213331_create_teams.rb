class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :team_code
      t.string :division_code
      t.string :conference_code

      t.timestamps
    end
  end
end
