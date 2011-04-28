class CreateCsses < ActiveRecord::Migration
  def self.up
    create_table :csses do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :csses
  end
end
