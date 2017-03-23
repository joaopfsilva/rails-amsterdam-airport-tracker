require 'json'
require 'pp'

file = File.open(File.join(Rails.root, 'db', 'data.json'))

json_data = JSON.parse(file.read)


json_data["flights"].each do |flight|

  params = {
    flight_id: flight["id"],
    flightName: flight["flightName"],
    scheduleDate: flight["scheduleDate"],
    flightDirection: flight["flightDirection"],
    flightNumber: flight["flightNumber"],
    prefixIATA: flight["prefixIATA"],
    prefixICAO: flight["prefixICAO"],
    scheduleTime: flight["scheduleTime"],
    serviceType: flight["serviceType"],
    mainFlight: flight["mainFlight"],
    codeshares: flight["codeshares"],
    estimatedLandingTime: flight["estimatedLandingTime"],
    actualLandingTime: flight["actualLandingTime"],
    #publicEstimatedOffBlockTime: flight["publicEstimatedOffBlockTime"],
    #actualOffBlockTime: flight["actualOffBlockTime"],
    #publicFlightState: flight["publicFlightState"],
    #route: flight["route"],
    terminal: flight["terminal"],
    gate: flight["gate"],
    #baggageClaim: flight["baggageClaim"],
    expectedTimeOnBelt: flight["expectedTimeOnBelt"],
    #checkinAllocations: flight["checkinAllocations"],
    transferPositions: flight["transferPositions"],
    #aircraftType: flight["aircraftType"],
    aircraftRegistration: flight["aircraftRegistration"],
    airlineCode: flight["airlineCode"],
    expectedTimeGateOpen: flight["expectedTimeGateOpen"],
    expectedTimeBoarding: flight["expectedTimeBoarding"],
    expectedTimeGateClosing: flight["expectedTimeGateClosing"],
    schemaVersion: flight["schemaVersion"]
  }

  new_flight = Flight.new(params)
  new_flight.save

end



























