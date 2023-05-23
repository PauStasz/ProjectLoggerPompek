class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :nick, :string
    add_column :users, :age, :integer
  end
end
