//
//  ChangeCityViewController.swift
//  Clima Weather App
//

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}

class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    //"Get Weather" button:
    @IBAction func getWeatherPressed(_ sender: AnyObject) {

        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)

        self.dismiss(animated: true, completion: nil)
        
    }
    
    //Dismiss the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
