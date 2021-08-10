# frozen_string_literal: true

class AddPhotoToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :photo, :string
  end
end
