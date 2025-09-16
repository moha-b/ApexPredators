//
//  ContentView.swift
//  ApexPredators
//
//  Created by Mohab Khalid on 15/09/2025.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    @State var searchText = ""
    @State var alphabetical = false;
    var filteredDinos: [Predator] {
        predators.sort(by: alphabetical)
        return predators.search(for: searchText)
    }
    var body: some View {
        NavigationStack{
            
            List(filteredDinos){ predator in
                NavigationLink{
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                } label: {
                    HStack{
                        Image(predator.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100,height: 100)
                        VStack(alignment: .leading){
                            Text(predator.name).fontWeight(.bold)
                            Text(predator.type.rawValue.capitalized)
                                .fontWeight(.semibold)
                                .padding(.vertical,3)
                                .padding(.horizontal, 8)
                                .background(predator.type.background)
                                .clipShape(.capsule)
                        }
                    }
                }
            }
            .navigationTitle("Apex Pradators")
            .searchable(text: $searchText)
            .autocorrectionDisabled()
            .animation(.default, value: searchText)
            .toolbar{
                ToolbarItem(placement:.topBarLeading,) {
                    Button {
                        withAnimation{
                            alphabetical.toggle()
                        }
                    } label: {
                        Image(systemName: alphabetical ? "film" : "textformat")
                            .symbolEffect(.bounce, value: alphabetical)
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
