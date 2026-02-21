class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :nome
      t.decimal :preco
      t.string :descricao

      t.timestamps
    end
  end
end
