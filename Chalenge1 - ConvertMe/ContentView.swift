//
//  ContentView.swift
//  Chalenge1 - ConvertMe
//
//  Created by Vitali Vyucheiski on 6/1/22.
//

import SwiftUI

struct ContentView: View {
//Variables & Conversions for Length ------------------------------------------------------------
    @State private var meters: Double = 0
    @State private var kilometers: Double = 0
    @State private var miles: Double = 0
    @State private var feet: Double = 0
    @State private var yards: Double = 0
    @State private var chosenLengthUnits = "Meters"
    let lengthUnits = ["Meters", "Kilometers", "Miles", "Feet", "Yard"]
    //conversions for Meters
    var metersToKilometers: String {
        let meters = Measurement(value: meters, unit: UnitLength.meters)
        let kilometers = meters.converted(to: UnitLength.kilometers)
        return "Kilometers: \(kilometers)"
    }
    var metersToMiles: String {
        let meters = Measurement(value: meters, unit: UnitLength.meters)
        let miles = meters.converted(to: UnitLength.miles)
        return "Miles: \(miles)"
    }
    var metersToFeet: String {
        let meters = Measurement(value: meters, unit: UnitLength.meters)
        let feet = meters.converted(to: UnitLength.feet)
        return "Feet: \(feet)"
    }
    var metersToYards: String {
        let meters = Measurement(value: meters, unit: UnitLength.meters)
        let yards = meters.converted(to: UnitLength.yards)
        return "Yards: \(yards)"
    }
    //Conversions for Kilometers
    var kilometersToMeters: String {
        let kilometers = Measurement(value: kilometers, unit: UnitLength.kilometers)
        let meters = kilometers.converted(to: UnitLength.meters)
        return "Meters: \(meters)"
    }
    var kilometersToMiles: String {
        let kilometers = Measurement(value: kilometers, unit: UnitLength.kilometers)
        let miles = kilometers.converted(to: UnitLength.miles)
        return "Miles: \(miles)"
    }
    var kilometersToFeet: String {
        let kilometers = Measurement(value: kilometers, unit: UnitLength.kilometers)
        let feet = kilometers.converted(to: UnitLength.feet)
        return "Feet: \(feet)"
    }
    var kilometersToYards: String {
        let kilometers = Measurement(value: kilometers, unit: UnitLength.kilometers)
        let yards = kilometers.converted(to: UnitLength.yards)
        return "Yards: \(yards)"
    }
    //Conversions for Miles
    var milesToMeters: String {
        let miles = Measurement(value: miles, unit: UnitLength.miles)
        let meters = miles.converted(to: UnitLength.meters)
        return "Meters: \(meters)"
    }
    var milesToKilometers: String {
        let miles = Measurement(value: miles, unit: UnitLength.miles)
        let kilometers = miles.converted(to: UnitLength.kilometers)
        return "Kilometers: \(kilometers)"
    }
    var milesToFeet: String {
        let miles = Measurement(value: miles, unit: UnitLength.miles)
        let feet = miles.converted(to: UnitLength.feet)
        return "Feet: \(feet)"
    }
    var milesToYards: String {
        let miles = Measurement(value: miles, unit: UnitLength.miles)
        let yards = miles.converted(to: UnitLength.yards)
        return "Yards: \(yards)"
    }
    //Conversion for Feet
    var feetToMeters: String {
        let input = Measurement(value: feet, unit: UnitLength.feet)
        let output = input.converted(to: UnitLength.meters)
        return "Meters: \(output)"
    }
    var feetToKilometers: String {
        let input = Measurement(value: feet, unit: UnitLength.feet)
        let output = input.converted(to: UnitLength.kilometers)
        return "Kilometers: \(output)"
    }
    var feetToMiles: String {
        let input = Measurement(value: feet, unit: UnitLength.feet)
        let output = input.converted(to: UnitLength.miles)
        return "Miles: \(output)"
    }
    var feetToYards: String {
        let input = Measurement(value: feet, unit: UnitLength.feet)
        let output = input.converted(to: UnitLength.yards)
        return "Yards: \(output)"
    }
    //Conversion for Yards
    var yardsToMeters: String {
        let input = Measurement(value: yards, unit: UnitLength.yards)
        let output = input.converted(to: UnitLength.meters)
        return "Meters: \(output)"
    }
    var yardsToKilometers: String {
        let input = Measurement(value: yards, unit: UnitLength.yards)
        let output = input.converted(to: UnitLength.kilometers)
        return "Kilometers: \(output)"
    }
    var yardsToMiles: String {
        let input = Measurement(value: yards, unit: UnitLength.yards)
        let output = input.converted(to: UnitLength.miles)
        return "Miles: \(output)"
    }
    var yardsToFeet: String {
        let input = Measurement(value: yards, unit: UnitLength.yards)
        let output = input.converted(to: UnitLength.feet)
        return "Feet: \(output)"
    }
    
//Variables & Conversion for Temperature ------------------------------------------------------------
    @State private var celsius: Double = 0
    @State private var fahrenheit: Double = 0
    @State private var kelvin: Double = 0
    @State private var chosenTemperatureUnits = "Celsius"
    let temperatureUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    //Conversion for Celsius
    var celsiusToFahrenheit: String {
        let input = Measurement(value: celsius, unit: UnitTemperature.celsius)
        let output = input.converted(to: UnitTemperature.fahrenheit)
        return "Fahrenheit: \(output)"
    }
    var celsiusToKelvin: String {
        let input = Measurement(value: celsius, unit: UnitTemperature.celsius)
        let output = input.converted(to: UnitTemperature.kelvin)
        return "Kelvin: \(output)"
    }
    //Conversion for Fahrenheit
    var fahrenheitToCelsius: String {
        let input = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let output = input.converted(to: UnitTemperature.celsius)
        return "Celsius: \(output)"
    }
    var fahrenheitToKelvin: String {
        let input = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let output = input.converted(to: UnitTemperature.kelvin)
        return "Kelvin: \(output)"
    }
    //Conversion for Kelvin
    var kelvinToCelsius: String {
        let input = Measurement(value: kelvin, unit: UnitTemperature.kelvin)
        let output = input.converted(to: UnitTemperature.celsius)
        return "Celsius: \(output)"
    }
    var kelvinToFahrenheit: String {
        let input = Measurement(value: kelvin, unit: UnitTemperature.kelvin)
        let output = input.converted(to: UnitTemperature.fahrenheit)
        return "Fahrenheit: \(output)"
    }

//Variables & Conversions for Volume
    @State private var milliliters: Double = 0
    @State private var liters: Double = 0
    @State private var gallons: Double = 0
    @State private var pints: Double = 0
    @State private var chosenVolumeUnits = "Liters"
    let volumeUnits = ["Milliliters", "Liters", "Gallons", "Pints"]
    //Conversion for Milliliters
    var millilitersToLiters: String {
        let input = Measurement(value: milliliters, unit: UnitVolume.milliliters)
        let output = input.converted(to: UnitVolume.liters)
        return "Liters: \(output)"
    }
    var millilitersToGallons: String {
        let input = Measurement(value: milliliters, unit: UnitVolume.milliliters)
        let output = input.converted(to: UnitVolume.gallons)
        return "Gallons: \(output)"
    }
    var millilitersToPints: String {
        let input = Measurement(value: milliliters, unit: UnitVolume.milliliters)
        let output = input.converted(to: UnitVolume.pints)
        return "Pints: \(output)"
    }
    //Conversion for Liters
    var litersToMilliliters: String {
        let input = Measurement(value: liters, unit: UnitVolume.liters)
        let output = input.converted(to: UnitVolume.milliliters)
        return "Milliliters: \(output)"
    }
    var litersToGallons: String {
        let input = Measurement(value: liters, unit: UnitVolume.liters)
        let output = input.converted(to: UnitVolume.gallons)
        return "Gallons: \(output)"
    }
    var litersToPints: String {
        let input = Measurement(value: liters, unit: UnitVolume.liters)
        let output = input.converted(to: UnitVolume.pints)
        return "Pints: \(output)"
    }
    //Conversion for Gallons
    var gallonsToMilliliters: String {
        let input = Measurement(value: gallons, unit: UnitVolume.gallons)
        let output = input.converted(to: UnitVolume.milliliters)
        return "Milliliters: \(output)"
    }
    var gallonsToLiters: String {
        let input = Measurement(value: gallons, unit: UnitVolume.gallons)
        let output = input.converted(to: UnitVolume.liters)
        return "Liters: \(output)"
    }
    var gallonsToPints: String {
        let input = Measurement(value: gallons, unit: UnitVolume.gallons)
        let output = input.converted(to: UnitVolume.pints)
        return "Pints: \(output)"
    }
    //Conversion for Pints
    var pintsToMilliliters: String {
        let input = Measurement(value: pints, unit: UnitVolume.pints)
        let output = input.converted(to: UnitVolume.milliliters)
        return "Milliliters: \(output)"
    }
    var pintsToLiters: String {
        let input = Measurement(value: pints, unit: UnitVolume.pints)
        let output = input.converted(to: UnitVolume.liters)
        return "Liters: \(output)"
    }
    var pintsToGallons: String {
        let input = Measurement(value: pints, unit: UnitVolume.pints)
        let output = input.converted(to: UnitVolume.gallons)
        return "Gallons: \(output)"
    }
    
    
    @State private var chosenState = "Length"
    let possibleStates = ["Length", "Temperature", "Volume"]
    @FocusState private var keyboardIsFocused: Bool
    
    
    var body: some View {
        NavigationView {
            Form {
                //Choosing type of Units
                Section {
                    Picker("Choose what you wanna convert:", selection: $chosenState, content: {
                        ForEach(possibleStates, id: \.self) {
                            Text($0)
                        }
                    })
                    .pickerStyle(.segmented)
                } header: {
                    Text("Choose type of units:")
                }
                
                //Displaying chosen Unit Type
                if chosenState == "Length" { //LENGTH --------------------------------------------------
                    //Choosing entered units
                    Section {
                        Picker("Chosen Units:", selection: $chosenLengthUnits, content: {
                            ForEach(lengthUnits, id: \.self) {
                                Text($0)
                            }
                        })
                        .pickerStyle(.segmented)
                    } header: {
                        Text("Choose units:")
                    }
                    
                    //Presenting Chosen Units
                    if chosenLengthUnits == "Meters" { //METERS
                        Section {
                            TextField("Meters", value: $meters, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter meter here:")
                        }
                        Section {
                            Text(metersToKilometers)
                            Text(metersToMiles)
                            Text(metersToFeet)
                            Text(metersToYards)
                        } header: {
                            Text("Output:")
                        }
                    } else if chosenLengthUnits == "Kilometers" { // KILOMETERS
                        Section {
                            TextField("Kilometers", value: $kilometers, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter kilometers here:")
                        }
                        Section {
                            Text(kilometersToMeters)
                            Text(kilometersToMiles)
                            Text(kilometersToFeet)
                            Text(kilometersToYards)
                        } header: {
                            Text("Output:")
                        }
                    } else if chosenLengthUnits == "Miles" { //MILES
                        Section {
                            TextField("Miles", value: $miles, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter miles here:")
                        }
                        Section {
                            Text(milesToMeters)
                            Text(milesToKilometers)
                            Text(milesToFeet)
                            Text(milesToYards)
                        } header: {
                            Text("Output:")
                        }
                    } else if chosenLengthUnits == "Feet" { //FEET
                        Section {
                            TextField("Feet", value: $feet, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter feet here:")
                        }
                        Section {
                            Text(feetToMeters)
                            Text(feetToKilometers)
                            Text(feetToMiles)
                            Text(feetToYards)
                        } header: {
                            Text("Output:")
                        }
                    } else { //YARDS
                        Section {
                            TextField("Yards", value: $yards, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter yards here:")
                        }
                        Section {
                            Text(yardsToMeters)
                            Text(yardsToKilometers)
                            Text(yardsToMiles)
                            Text(yardsToFeet)
                        } header: {
                            Text("Output:")
                        }
                    }
                } else if chosenState == "Temperature" { //TEMPERATURE ---------------------------------
                    //Choosing entered units
                    Section {
                        Picker("Chosen Units:", selection: $chosenTemperatureUnits, content: {
                            ForEach(temperatureUnits, id: \.self) {
                                Text($0)
                            }
                        })
                        .pickerStyle(.segmented)
                    } header: {
                        Text("Choose units:")
                    }
                    
                    //Presenting Chosen Units
                    if chosenTemperatureUnits == "Celsius" { //CELSIUS
                        Section {
                            TextField("Celsius", value: $celsius, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter celsius° here:")
                        }
                        Section {
                            Text(celsiusToFahrenheit)
                            Text(celsiusToKelvin)
                        } header: {
                            Text("Output:")
                        }
                    } else if chosenTemperatureUnits == "Fahrenheit" { //FAHRENHEIT
                        Section {
                            TextField("Fahrenheit", value: $fahrenheit, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter fahrenheit° here:")
                        }
                        Section {
                            Text(fahrenheitToCelsius)
                            Text(fahrenheitToKelvin)
                        } header: {
                            Text("Output:")
                        }
                    } else { //KELVIN
                        Section {
                            TextField("Kelvin", value: $kelvin, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter kelvin° here:")
                        }
                        Section {
                            Text(kelvinToCelsius)
                            Text(kelvinToFahrenheit)
                        } header: {
                            Text("Output:")
                        }
                    }
                } else { //VOLUME -------------------------------------------------------------
                    //Choosing entered units
                    Section {
                        Picker("Chosen Units:", selection: $chosenVolumeUnits, content: {
                            ForEach(volumeUnits, id: \.self) {
                                Text($0)
                            }
                        })
                        .pickerStyle(.segmented)
                    } header: {
                        Text("Choose units:")
                    }
                    
                    //Presenting Chosen Units
                    if chosenVolumeUnits == "Milliliters" { //MILLILITERS
                        Section {
                            TextField("Milliliters", value: $milliliters, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter milliliters here:")
                        }
                        Section {
                            Text(millilitersToLiters)
                            Text(millilitersToGallons)
                            Text(millilitersToPints)
                        } header: {
                            Text("Output:")
                        }
                    } else if chosenVolumeUnits == "Liters" { //LITERS
                        Section {
                            TextField("Liters", value: $liters, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter liters here:")
                        }
                        Section {
                            Text(litersToMilliliters)
                            Text(litersToGallons)
                            Text(litersToPints)
                        } header: {
                            Text("Output:")
                        }
                    } else if chosenVolumeUnits == "Gallons" { //GALLONS
                        Section {
                            TextField("Gallons", value: $gallons, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter gallons here:")
                        }
                        Section {
                            Text(gallonsToMilliliters)
                            Text(gallonsToLiters)
                            Text(gallonsToPints)
                        } header: {
                            Text("Output:")
                        }
                    } else { //PINTES
                        Section {
                            TextField("Pints", value: $pints, format: .number)
                                .keyboardType(.decimalPad)
                                .focused($keyboardIsFocused)
                        } header: {
                            Text("Enter pints here:")
                        }
                        Section {
                            Text(pintsToMilliliters)
                            Text(pintsToLiters)
                            Text(pintsToGallons)
                        } header: {
                            Text("Output:")
                        }
                    }
                }
            }
            .navigationTitle("ConvertMe")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        keyboardIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
