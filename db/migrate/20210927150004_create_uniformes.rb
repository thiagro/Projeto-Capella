class CreateUniformes < ActiveRecord::Migration[5.2]
  def change
    create_table :uniformes do |t|
      t.string :item
      t.string :tamanho
      t.integer :quantidade
      t.string :validade

      t.timestamps
    end
  end
end
