//
//  profileLayout.swift
//  ADEM
//
//  Created by Coleman Coats on 9/27/18.
//  Copyright © 2018 Coleman Coats. All rights reserved.
//

import Foundation
import UIKit


class AccountCell: CellBasics {

	
	var profielItem: accountContent? {
		
		didSet {
			personName.text = profielItem?.personName
			print("Name is grabed and placed in the person name text box")
		}
	}
	
	let profileImageSection: UIImageView = {
		let profilepic = UIImageView()
		profilepic.image = UIImage(named: "addButton")
		profilepic.contentMode = .center
		//addItemButtonImage.contentMode = .scaleAspectFit
		profilepic.clipsToBounds = true
		profilepic.layer.masksToBounds = true
		print("Created the add button")
		
		return profilepic
	}()
	
	let personName: UILabel = {
		let accountNameLBL = UILabel()
		accountNameLBL.font = UIFont(name: "Helvetica", size: 20)
		accountNameLBL.font = .boldSystemFont(ofSize: 20)
		accountNameLBL.textColor = UIColor.blue
		//accountNameLBL.text = "Coleman"
		accountNameLBL.textAlignment = .center
		accountNameLBL.text = "Coleman"
		//accountNameLBL.layer.cornerRadius = 2
		//accountNameLBL.layer.borderWidth = 0.1
		print("Created the account name Label")
		
		return accountNameLBL
	}()
	
	let nickName: UILabel = {
		let NN = UILabel()
		NN.font = UIFont(name: "Helvetica", size: 20)
		NN.font = .boldSystemFont(ofSize: 20)
		NN.textColor = UIColor.blue
		NN.text = "Lazy"
		NN.textAlignment = .center
		//accountNameLBL.layer.cornerRadius = 2
		//accountNameLBL.layer.borderWidth = 0.1
		print("Created the account name Label")
		
		return NN
	}()
	

	
	override func setupViews() {
		addSubview(profileImageSection)
		addSubview(personName)
		
		//Vertical
		addConstraintsWithFormats(format: "V:|[v0(110)]-5-[v1(20)]|", views: profileImageSection, personName)
		
		//Horizontal
		addConstraintsWithFormats(format: "H:|[v0]|", views: profileImageSection)
		
		addConstraintsWithFormats(format: "H:|[v0]|", views: personName)
		
		/*
		//Top Constraints Quantity
		addConstraint(NSLayoutConstraint(item: personName, attribute: .top, relatedBy: .equal, toItem: profileImageSection, attribute: .top, multiplier: 1, constant: 5))
		//Right Constraints Quantity
		addConstraint(NSLayoutConstraint(item: personName, attribute: .right, relatedBy: .equal, toItem: profileImageSection, attribute: .right, multiplier: 1, constant: -5))
		//Height Constraint Quantity
		addConstraint(NSLayoutConstraint(item: personName, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 40))
		//Width Constraint
		addConstraint(NSLayoutConstraint(item: personName, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0, constant: 100))
*/

	}
}


class familyCell: CellBasics {

	let kitchenStaff0: UIImageView = {
		let Staff0 = UIImageView()
		Staff0.contentMode = .center
		Staff0.clipsToBounds = true
		Staff0.layer.masksToBounds = true
		Staff0.layer.cornerRadius = 10
		Staff0.backgroundColor = UIColor.blue

		print("Created the add button")

		return Staff0
	}()
	
	let kitchenStaff1: UIImageView = {
		let Staff1 = UIImageView()
		Staff1.contentMode = .center
		Staff1.clipsToBounds = true
		Staff1.layer.masksToBounds = true
		Staff1.layer.cornerRadius = 10
		Staff1.backgroundColor = UIColor.yellow
		
		print("Created the add button")
		
		return Staff1
	}()
	
	
	

	override func setupViews() {
		addSubview(kitchenStaff0)
		addSubview(kitchenStaff1)

		//Horizontal
		addConstraintsWithFormats(format: "H:|[v0(50)]-[v1(50)]|", views: kitchenStaff0, kitchenStaff1)
		
		//Vertical
		addConstraintsWithFormats(format: "V:|[v0]|", views: kitchenStaff0)
		addConstraintsWithFormats(format: "V:|[v0]|", views: kitchenStaff1)
	}
}


