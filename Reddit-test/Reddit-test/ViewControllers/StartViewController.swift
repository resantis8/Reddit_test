//
//  StartViewController.swift
//  Reddit-test
//
//  Created by Rene Santis on 17/08/21.
//

import UIKit

class StartViewController: UIViewController {
    
    // MARK: - Properties
    
    var viewModel: StartViewModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }
            
            setupViewModel(with: viewModel)
        }
    }
    
    @IBOutlet var connectButton: UIButton?
    
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Private methods
    
    private func setupViewModel(with viewModel: StartViewModel) {
        
    }

}
