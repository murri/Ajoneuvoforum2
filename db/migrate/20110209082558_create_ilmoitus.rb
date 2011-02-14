class CreateIlmoitus < ActiveRecord::Migration
  def self.up
    create_table :ilmoitus do |t|
      t.string :tyyppi
      t.string :merkki
      t.string :malli

      t.timestamps
    end
  end

  def self.down
    drop_table :ilmoitus
  end
end
