//
//  RootViewController.swift
//  Challenge1
//
//  Created by nikita on 30.03.2023.
//

import UIKit

class RootViewController: UIViewController {

    private let redView: UIView = {
            let view = UIView()
            view.backgroundColor = .systemRed
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            return view
        }()

        private let blueView: UIView = {
            let view = UIView()
            view.backgroundColor = .systemBlue
            view.autoresizingMask = [.flexibleWidth,.flexibleTopMargin,.flexibleBottomMargin]
            return view
        }()
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth,.flexibleTopMargin,.flexibleBottomMargin]
        return view
    }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemGray
            redView.addSubview(blueView)
            redView.addSubview(greenView)
        }

        override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()
            if redView.superview == nil {
                view.addSubview(redView)

                let containerWidth = view.bounds.width
                let containerHeight = view.bounds.height

                let redWidth = containerWidth
                let redHeight = containerHeight
                redView.frame = CGRect(x: 0, y: 0, width: redWidth, height: redHeight)

                let blueWidth = redWidth - 4 * 25.0
                let blueY = (redHeight - 100.0) / 5
                blueView.frame = CGRect(x: 40.0, y: blueY, width: blueWidth, height: 100.0)
                
                let greenWidth = blueWidth / 2
                let greenHeight = 50
                greenView.frame = CGRect(x: 40, y: blueY / 2, width: greenWidth, height: 50)
            }
        }


}
