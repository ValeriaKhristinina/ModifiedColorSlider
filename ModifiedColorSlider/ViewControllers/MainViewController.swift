//
//  MainViewController.swift
//  ModifiedColorSlider
//
//  Created by Valeria Khristinina on 16/02/2020.
//

import UIKit

class MainViewController: UIViewController {
	
	var viewColor = ViewColor(red: 1, green: 1, blue: 1)
	
//	var redValue: Float = 1
//	var greenValue: Float = 1
//	var blueValue: Float = 1

    override func viewDidLoad() {
        super.viewDidLoad()
		changeColorView()
    }
	
	func changeColorView() {
		view.backgroundColor = UIColor(
			red: CGFloat(viewColor.red),
			green: CGFloat(viewColor.green),
			blue: CGFloat(viewColor.blue),
            alpha: 1
        )
	}
	
//     MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let colorVC = segue.destination as! ColorViewController
		colorVC.delegate = self
		colorVC.rbgColor = viewColor
    }

}

//MARK: - ColorViewControllerDelegate

extension MainViewController: ColorViewControllerDelegate{
	func transferColorValue(_ color: ViewColor) {
		viewColor = ViewColor(red: color.red, green: color.green, blue: color.blue)
		changeColorView()
	}
}
