//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 12.02.2024.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var pictureLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var ansversResult: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pictureLabel.text = Sorted()?.rawValue
        descriptionLabel.text = Sorted()?.definition
    }
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
    
    private func Sorted() -> Animal? {
        var animalCounts: [Animal: Int] = [:]

        for animal in ansversResult {
          animalCounts[animal.animal, default: 0] += 1
        }
        let sortedAnimalCounts = animalCounts.sorted { $0.value > $1.value }
        print(sortedAnimalCounts)
        
        return sortedAnimalCounts.first?.key
    }
}
