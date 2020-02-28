####  Teacher notes for TableViewColour  

This is an extension of the TableViewOne project app. It demonstrates a simple UIViewTableController but uses different backing data. 

The data is generated in a different class - DataUtilities.swift which provides parallel Arrays and a Dictionary of Strings. The structures have the names of system colours, and the corresponding UIColor objects of the same name 

```Swift
let systemColorNames:Array = [
	"black","blue", etc.

let systemColorObjects:Array = [
	UIColor.black, UIColor.blue, etc.

let colorDictionary: NSDictionary = [
	"black" : UIColor.black,
	"blue" : UIColor.blue, etc.
```

In the project as-is, the table data is constructed from the systemColorNames array, then the cellForRowAtIndexPath method extracts the UIColor object from the dictionary.

```Swift
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
...
	let colorName:String =  tableData[indexPath.row]
	cell?.textLabel?.text = "⬤⬤⬤⬤⬤" 
	cell?.textLabel?.textColor = colorDictionary[colorName] as? UIColor
```

This isn't necessarily the most straightforward way to manage the backing data, and students can experiment with different ways of managing the table data - the point is to understand that a datastore can hold objects of any type, and our tables can work with them in different ways. Some additional functions have been provided in DataUtilities. 

