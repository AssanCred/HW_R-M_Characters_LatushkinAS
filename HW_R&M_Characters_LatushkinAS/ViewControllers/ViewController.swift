//
//  ViewController.swift
//  HW_R&M_Characters_LatushkinAS
//
//  Created by Артём Латушкин on 07.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCharacter()
    }
    
    private func fetchCharacter() {
        let urlString = "https://rickandmortyapi.com/api/character/108"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let character = try decoder.decode(Character.self, from: data)
                print(character)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

