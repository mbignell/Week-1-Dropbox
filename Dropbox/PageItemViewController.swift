//
//  PageItemViewController.swift
//  Dropbox
//
//  Created by Margaret Bignell on 9/19/15.
//  Copyright © 2015 maggled. All rights reserved.
//

import UIKit

class PageItemViewController: UIViewController {

    
    // MARK: - Variables
    var itemIndex: Int = 0
    var imageName: String = "" {
        
        didSet {
            
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
            
        }
    }
    
    @IBOutlet var contentImageView: UIImageView?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
    }
}
