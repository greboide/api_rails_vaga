class CreateDependentes < ActiveRecord::Migration[5.2]
  def change
    create_table :dependentes do |t|
      t.string :name
      t.string :parentesco
      t.bigint :user_id

      t.timestamps
    end
  end
end
