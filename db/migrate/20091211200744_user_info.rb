class UserInfo < ActiveRecord::Migration
  def self.up
		add_column :users, :username, :string
		add_column :users, :psw, :string
		add_column :users, :email, :string
		add_column :users, :role, :integer
		add_column :users, :birth_date, :datetime
		add_column :users, :free_field, :text
		add_column :users, :char_limit, :integer
  end

  def self.down
		remove_column :users, :username
		remove_column :users, :psw
		remove_column :users, :email
		remove_column :users, :role
		remove_column :users, :birth_date
		remove_column :users, :free_field
		remove_column :users, :char_limit
  end
end
