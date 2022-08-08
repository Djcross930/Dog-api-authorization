class CreateDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :age
      t.integer :breed

      t.timestamps
    end
  end
end
