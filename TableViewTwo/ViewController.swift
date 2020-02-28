//  ViewController.swift
//  TableView
//
//  Created by Lachlan Scott on 2020/02/19.
//  Copyright © 2020 Fudoshin Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	//! Create an empty array of Strings array to use as backing data for our table
	var tableData:[String] = []
	var tableDictionary = [String : UIColor]()
	
	//! Create an empty NSDictionary with Strings & Colors
	//let colorDictionary = [String : UIColor]()
	
	//! Outlets for elements added in our Storyboard
	@IBOutlet weak var navBar: UINavigationBar!
	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var addButton: UIBarButtonItem!
	@IBOutlet weak var barTitle: UINavigationItem!
	@IBOutlet weak var trashButton: UIBarButtonItem!
	
	
	//! A method to add another item to our table data array
	//! We also reload the table into the display
	//! Then we update the table title
	@IBAction func addData(_ sender: Any) {
		tableData.append(systemColorNames.randomElement()!)
		tableView.reloadData()
		trashButton.isEnabled = true
		setTitleText()
	}
	
	@IBAction func trashData(_ sender: Any) {
		// leave at least one item in the data!
		if(tableData.count > 0) {
			let randomIndex = Int.random(in: 0...tableData.count-1)
			tableData.remove(at: randomIndex)
			tableView.reloadData()
			setTitleText()
		}
		if (tableData.count < 1) {
			trashButton.isEnabled = false
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//! Use our DataUtilities to add elements to the tableData array...
		//! Put a colour name in to the array, later you can get out the color object
		for _ in 1 ... 5 {
			tableData.append(systemColorNames.randomElement()!)
		}
		
		//! Then use our UI function to set the title text
		setTitleText()
	}
	
	/* 	Lesson Notes:  UITableViewController protocol
	A UITableView must conform to the UITableViewController protocol
	that means it requires at least these three following tableview() methods to be implemented
	
	#1 func tableView numberOfRowsInSection
	#2 func numberOfSections in tableView
	#3 func tableView cellForRowAtIndexPath
	*/
	
	//! Lesson Notes: try commenting out one of the required methods and review XCode's error report
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		//! this MUST return the correct size of the datasource; or Bad Things will happen!
		//! Try changing this eg. return 5 and see what happens ...
		return tableData.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// use the cell we designed and named in our Storyboard
		let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
		
		// refer to the tabledata array we defined
		// extracting the item at the index that corresponds to the table row number
		// eg. row 1 - item 1, row 2 - item 2, etc.
		//let swatchColor:UIColor = (colorDictionary[description] as! UIColor)
		let description:String =  tableData[indexPath.row]
		
		cell?.textLabel?.text = "⬤⬤⬤⬤⬤" //◉◉◉◉◉♠︎♣︎♥︎♦︎
		cell?.textLabel?.textColor = colorDictionary[description] as? UIColor
		cell?.textLabel?.shadowColor = UIColor.lightGray
		
		cell?.detailTextLabel?.text = "UIColor.\(description)"
		
		
		// working
		//cell?.backgroundColor = colorDictionary[labelText] as? UIColor
		
		
		return cell!
	}
	
	// Table Sections provide indexing, such as, in an address book
	// Sections A, B, C for items beginning with A, B and C respectively
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	//! ----------- UI Utilities
	
	//! Set the title text to the table row count by referring to the backing data we created
	func setTitleText(){
		barTitle.title = "\(tableData.count) Rows"
	}
	
	
}

