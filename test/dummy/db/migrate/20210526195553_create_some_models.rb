class CreateSomeModels < ActiveRecord::Migration[6.1]
  def change
    create_table :some_models do |t|
      t.string :some_string

      t.timestamps
    end
  end
end
