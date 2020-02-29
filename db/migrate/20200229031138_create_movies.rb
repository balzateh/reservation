class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :nombre
      t.string :descripcion
      t.string :image_url
      t.date :fecha

      t.timestamps
    end
  end
end
