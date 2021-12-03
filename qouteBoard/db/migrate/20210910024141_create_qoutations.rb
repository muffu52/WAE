# frozen_string_literal: true

class CreateQoutations < ActiveRecord::Migration[6.1]
  def change
    create_table :qoutations do |t|
      t.text :quote

      t.timestamps
    end
  end
end
