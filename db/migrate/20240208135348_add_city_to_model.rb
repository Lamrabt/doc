class AddCityToModel < ActiveRecord::Migration[7.1]
  def change
    add_reference :doctors, :city, index: true, foreign_key: true
    add_reference :patients, :city, index: true, foreign_key: true
    add_reference :appointments, :city, index: true, foreign_key: true
  end
end
