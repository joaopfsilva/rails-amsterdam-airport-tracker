class AddFlightIdFieldToFlight < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :flight_id, :string
  end
end
