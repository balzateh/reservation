class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :nombre
      t.integer :celular
      t.integer :cedula
      t.string :email
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
