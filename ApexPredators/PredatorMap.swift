//
//  PredatorMap.swift
//  ApexPredators
//
//  Created by Mohab Khalid on 17/09/2025.
//

import SwiftUI
import MapKit

struct PredatorMap: View {
    let predators = Predators()
    @State var satellite = false
    @State var position: MapCameraPosition
    var body: some View {
        Map(position: $position){
            ForEach(predators.apexPredators) { predator in
                Annotation(
                    predator.name,
                    coordinate: predator.location){
                        Image(predator.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 100)
                            .shadow(color: .white, radius: 3)
                            .scaleEffect(x: -1)
                    }
            }
        }
        .mapStyle(
            satellite ?
                .imagery(elevation: .realistic) :
                    .standard(elevation: .realistic)
        )
        .overlay(alignment: .bottomTrailing){
            Button {
                satellite.toggle()
            } label: {
                
            }
        }
    }
}

#Preview {
    PredatorMap(
        position:
                .camera(
                    MapCamera(
                        centerCoordinate: Predators().apexPredators[2].location,
                        distance: 1000,
                        heading: 250,
                        pitch: 80
                    )
                )
    ).preferredColorScheme(.dark)
}
