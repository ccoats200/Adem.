//
//  Design.Elements.swift
//  ADEM
//
//  Created by Coleman Coats on 7/26/18.
//  Copyright © 2018 Coleman Coats. All rights reserved.
//

import Foundation
import UIKit
//Color Extension
extension UIColor {
	static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
		return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
	}
}

//Constraints Extension
extension UIView {
	func addConstraintsWithFormats(format: String, views: UIView...) {
		var viewsDictionary = [String: UIView]()
		for (index, view) in views.enumerated() {
			let key = "v\(index)"
			view.translatesAutoresizingMaskIntoConstraints = false
			viewsDictionary[key] = view
		}
		addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
	}
}

//SuperClass Collection View Cell
class CellBasics: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}
	
	func setupViews() {
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}


//Rotation on screen only

/*
override func viewWillAppear(_ animated: Bool) {
	super.viewWillAppear(animated)
	let appDelegate = UIApplication.shared.delegate as! AppDelegate
	appDelegate.enableAllOrientation = true
}

override func viewWillDisappear(_ animated: Bool) {
	super.viewWillDisappear(animated)
	
	let appDelegate = UIApplication.shared.delegate as! AppDelegate
	appDelegate.enableAllOrientation = false
	
	let value = UIInterfaceOrientation.portrait.rawValue
	UIDevice.current.setValue(value, forKey: "orientation")
}
*/ 

enum deviceViews: Int {

	case Ble = 0, Ble1 = 1, Ble2 = 2, Ble3 = 3
}

