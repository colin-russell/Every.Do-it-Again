//
//  DetailViewController.swift
//  Every.Do it Again
//
//  Created by Colin on 2018-05-16.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = titleLabel {
                label.text = "Title: \(detail.title ?? "")"
            }
            if let label = priorityLabel {
                label.text = "Priority: \(String(detail.priorityNumber))"
            }
            if let label = detailDescriptionLabel {
                label.text = "Description: \(detail.todoDescription ?? "")"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

