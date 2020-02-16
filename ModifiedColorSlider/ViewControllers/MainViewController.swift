//
//  MainViewController.swift
//  ModifiedColorSlider
//
//  Created by Valeria Khristinina on 16/02/2020.
//

import UIKit

class MainViewController: UIViewController {
	
	var redValue: Float = 1.00
	var greenValue: Float = 1.00
	var blueValue: Float = 1.00

    override func viewDidLoad() {
        super.viewDidLoad()
		
		view.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
		
    }
    
	@IBAction func changeColor(_ sender: Any) {
	}
	
//     MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let colorVC = segue.destination as! ColorViewController
		colorVC.redSliderValue = redValue
		colorVC.greenSliderValue = greenValue
		colorVC.blueSliderValue = blueValue
    }

}
