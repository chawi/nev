class CharacterBasicInfo < ActiveRecord::Migration
  def self.up
			add_column :characters, :char_name, :string
  end

  def self.down
		remove_column :characters, :char_name
  end
end
