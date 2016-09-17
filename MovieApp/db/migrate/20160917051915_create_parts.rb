class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.belongs_to :movie, index: true #添加movie_id字段关联movie
      t.belongs_to :actor, index: true #添加actor_id字段关联actor
      t.timestamps
    end
  end
end
