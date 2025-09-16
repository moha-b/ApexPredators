//
//  Predator.swift
//  ApexPredators
//
//  Created by Mohab Khalid on 16/09/2025.
//

import Foundation

class Predators {
    var allApexPredators: [Predator] = []
    var apexPredators: [Predator] = []
    
    init() {
        decodePradatorData()
    }
    
    func decodePradatorData(){
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do{
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                allApexPredators = try decoder.decode([Predator].self, from: data)
                apexPredators = allApexPredators
            } catch {
                print("Error decoding json data : \(error)")
            }
        }
    }
    
    func search(for searchText: String) -> [Predator]{
        if searchText.isEmpty{
            return apexPredators
        }else {
            return apexPredators.filter { predators in
                predators.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    func sort(by alphabetical: Bool){
        apexPredators.sort { predator1, predator2 in
            if alphabetical {predator1.name < predator2.name}
            else { predator1.id < predator2.id}
        }
        
    }
    
    func filter(by type : PredatorType) {
        if type == .all{
            apexPredators = allApexPredators
        }else{
            apexPredators =  allApexPredators.filter { pradator in
                pradator.type == type
            }
        }
    }
}
