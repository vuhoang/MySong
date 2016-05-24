//
//  RootViewController.swift
//  MySong
//
//  Created by Vu Hoang on 4/13/16.
//  Copyright © 2016 Vu Hoang. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
		// Do any additional setup after loading the view.
	}
}

extension RootViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 30
	}
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        print("Indexpath: \(indexPath.row)")
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
		cell.textLabel?.text = "Title \(indexPath.row)"
        cell.textLabel?.backgroundColor = UIColor.brownColor()
		return cell
	}
}