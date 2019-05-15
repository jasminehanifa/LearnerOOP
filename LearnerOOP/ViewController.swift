//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Jasmine Hanifa Mounir on 15/05/19.
//  Copyright © 2019 Jasmine Hanifa Mounir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var learnerNameLabel: UILabel!
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerGenderLabel: UILabel!
    
    var learnerInstance: LearnerModel?  //You just create copy of your learnerModel
    var facilitatorInstance: FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(nameLearner: "Jasmine", ageLearner: 21, genderLearner: "Female", imageProfileLearner: "")
        facilitatorInstance = FacilitatorModel(facilName: "David", facilAge: 24, facilGender: "Male", facilImageProfile: "", facilPerk: "Unlimited Starbuck on Friday")
        updateUI()
//        updateUIFacil()
    }

    
    func updateUI(){
        if let instance = facilitatorInstance{
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerGenderLabel.text = instance.gender
        }
    }
    
//    func updateUIFacil(){
//        if let instance = facilitatorInstance{
//            learnerNameLabel.text = instance.name
//            learnerAgeLabel.text = "\(instance.age)"
//            learnerGenderLabel.text = instance.gender
//        }
//    }
    
    @IBAction func increaseAgeButtonClicked(_ sender: UIButton) {
        if let instance = facilitatorInstance{
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
    }
    
//    @IBAction func increaseAgeButtonFacil(_ sender: UIButton) {
//        if let instance = facilitatorInstance{
//            instance.increaseAge()
//            instance.coachMentee()
//            updateUIFacil()
//        }
//    }
}

