//
//  MainViewController.swift
//  ModifiedColorSlider
//
//  Created by Valeria Khristinina on 16/02/2020.
//

import UIKit

class MainViewController: UIViewController {
	
	var redValue = 1
	var greenValue = 1
	var blueValue = 1

    override func viewDidLoad() {
        super.viewDidLoad()
		
		view.backgroundColor = UIColor(
            red: CGFloat(redValue),
            green: CGFloat(greenValue),
            blue: CGFloat(blueValue),
            alpha: 1
        )
		
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}