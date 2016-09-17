class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title          #添加title字符串字段
      t.string :image          #添加image字符串字段
      t.string :year           #添加year字符串字段
      t.string :plot           #添加plot字符串字段
      t.timestamps
    end
  end
end
