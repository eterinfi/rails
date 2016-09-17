class CreateDests < ActiveRecord::Migration[5.0]
  def change
    create_table :dests do |t|
      t.string :name
      t.string :image
      t.string :desc
      t.references :tag
      t.timestamps
    end
  end
end
