//
//  MainViewController.swift
//  ModifiedColorSlider
//
//  Created by Valeria Khristinina on 16/02/2020.
//

import UIKit


class MainViewController: UIViewController {
	
	var redValue: Float = 1
	var greenValue: Float = 1
	var blueValue: Float = 1

    override func viewDidLoad() {
        super.viewDidLoad()
		changeColorView()
    }
	
	func changeColorView() {
		view.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
	}
	
//     MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let colorVC = segue.destination as! ColorViewController
		colorVC.delegate = self
		colorVC.redSliderValue = redValue
		colorVC.greenSliderValue = greenValue
		colorVC.blueSliderValue = blueValue
    }

}

//MARK: - ColorViewControllerDelegate

extension MainViewController: ColorViewControllerDelegate{
	func transferColorValue( _ redValue: Float, _ greenValue: Float, _ blueValue: Float) {
		self.redValue = redValue
		self.blueValue = blueValue
		self.greenValue = greenValue

		changeColorView()
	}
	
	
}
