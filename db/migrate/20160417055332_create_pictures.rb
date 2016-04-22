class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :description
      t.has_attached_file :image
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
