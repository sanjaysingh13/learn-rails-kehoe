class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.string :link
      t.text :writeup
      t.string :still1
      t.string :still2
      t.string :still3
      t.string :still4
      t.string :still5
      t.string :still6
      t.string :still7
      t.string :still8

      t.timestamps
    end
  end
end
