class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :flightName
      t.date :scheduleDate
      t.string :flightDirection
      t.integer :flightNumber
      t.string :prefixIATA
      t.string :prefixICAO
      t.date :scheduleTime
      t.string :serviceType
      t.string :mainFlight
      t.string :codeshares
      t.date :estimatedLandingTime
      t.date :actualLandingTime
      t.date :publicOffBlockTime
      t.integer :terminal
      t.string :gate
      t.date :expectedTimeOnBelt
      t.string :transferPositions
      t.string :aircraftTypemain
      t.string :aircraftTypesub
      t.string :aircraftRegistration
      t.string :airlineCode
      t.date :expectedTimeGateOpen
      t.date :expectedTimeBoarding
      t.date :expectedTimeGateClosing
      t.string :schemaVersion

      t.timestamps
    end
  end
end
