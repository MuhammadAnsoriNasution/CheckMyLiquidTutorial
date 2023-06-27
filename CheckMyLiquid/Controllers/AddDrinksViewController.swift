//
//  AddDrinksViewController.swift
//  CheckMyLiquid
//
//  Created by Andrew Indayang on 12/06/23.
//

import UIKit

class AddDrinksViewController: UIViewController {

    @IBOutlet weak var drinksPickerView: UIPickerView!
    var pickerData = [["Water", "Mojito", "Juice"],["100", "250", "500"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        drinksPickerView.delegate=self
        drinksPickerView.dataSource=self
    }
    @IBAction func drinksButtonTaped(_ sender: SaveButton) {
        let defaults = UserDefaults.standard
        let selectDrink = drinksPickerView.selectedRow(inComponent: 0)
        let selectAmount = drinksPickerView.selectedRow(inComponent: 1)
        let saveDrink = pickerData[0][selectDrink]
        let saveMount = pickerData[1][selectAmount]
        let dict = ["drink": saveDrink, "amount": saveMount]
        var drinksArray: [[String:String]] = defaults.value(forKey: "MyDrinks") as? [[String:String]] ?? []
        drinksArray.append(dict)
        defaults.set(drinksArray, forKey: "MyDrinks")
        navigationController?.popToRootViewController(animated: true)
    }
    
}
extension AddDrinksViewController:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    
}
