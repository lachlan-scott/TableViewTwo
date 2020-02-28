//
//  DataUtilities.swift
//  TableView
//
//  Created by Lachlan Scott on 2020/02/20.
//  Copyright © 2020 Fudoshin Design. All rights reserved.
//

import Foundation
import UIKit


//! Parallel arrays of UIColor objects and their names
let systemColorObjects:Array = [
	UIColor.black, UIColor.blue, UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.gray, UIColor.green, UIColor.lightGray, UIColor.magenta, UIColor.orange, UIColor.purple, UIColor.red, UIColor.white, UIColor.yellow
]


let systemColorNames:Array = [
	"black","blue","brown","cyan","darkGray","gray","green","lightGray","magenta","orange","purple","red","white","yellow"
]

let colorDictionary: NSDictionary = [
	"black" : UIColor.black,
	"blue" : UIColor.blue,
	"brown" : UIColor.brown,
	"cyan" : UIColor.cyan,
	"darkGray" : UIColor.darkGray,
	"gray" : UIColor.gray,
	"green" : UIColor.green,
	"lightGray" : UIColor.lightGray,
	"magenta" : UIColor.magenta,
	"orange" : UIColor.orange,
	"purple" : UIColor.purple,
	"red" : UIColor.red,
	"white" : UIColor.white,
	"yellow" : UIColor.yellow
]

//! -------- unused, but useful for personal experimentation -----

var variousColourNames:Array = [
	"White","Yellow","Blue","Red","Green","Black","Brown","Azure","Ivory","Teal","Silver","Purple","Navy Blue","Pea Green","Gray","Orange","Maroon","Charcoal","Aquamarine","Coral","Fuchsia","Wheat","Lime","Crimson","Khaki","Hot Pink","Magenta","Olden","Plum","Olive","Cyan"
]

//! Returns an array of Strings for use as dummy data in a UITableViewController
func createTableData(forTableRows count:Int) -> [String] {
	var tableData:[String] = []
	for _ in 0 ... count {
		tableData.append(variousColourNames[Int.random(in: 0...variousColourNames.count-1)])
	}
	return tableData
}
