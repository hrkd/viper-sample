//
//  SampleViewController.swift
//  viper
//
//  Created by @_hrkd on 2020/11/27.
//  
//

import UIKit

/*
 * Protocol that defines the view input methods.
 */
protocol SampleViewInterface: class {
}

class SampleViewController: UIViewController, SampleViewInterface {
    // Reference to the Presenter's interface.
    var presenter: SamplePresenter!
    private var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.label = UILabel()
        self.label.text = self.presenter.updateLabel().title
        self.label.frame = CGRect(x: 0, y: 120, width: UIScreen.main.bounds.size.width, height: 44)
        self.label.textColor = .white
        self.view.addSubview(label)

        // Do any additional setup after loading the view.
    }
}
