//
//  ModelData.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 28/04/23.
//

import Foundation

final class ModelData: ObservableObject
{
   @Published var landmarks: [landMark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var features: [landMark] {
        landmarks.filter { $0.isFeatured }
    }
    
    var categories: [String: [landMark]]{
        Dictionary(
            grouping: landmarks, by: {
                $0.category.rawValue
            }
            )
            
    }
}


func load<V:Decodable>(_ filename: String) -> V
{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else
    {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    do {
    data = try Data(contentsOf: file)
    }
    catch
    {
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(V.self, from: data)
    }
    catch{
        fatalError("Couldn't parse \(filename) as \(V.self):\n\(error)")
    }
}
