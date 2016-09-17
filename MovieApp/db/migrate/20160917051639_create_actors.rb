class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string :fname          #添加fname字符串字段
      t.string :lname          #添加lname字符串字段
      t.string :image          #添加image字符串字段
      t.string :bio            #添加bio字符串字段
      t.timestamps
    end
  end
end
