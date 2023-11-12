//
//  ViewController.swift
//  animation
//
//  Created by Mariam Mchedlidze on 12.11.23.
//
import UIKit

final class ViewController: UIViewController {
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(label)
        setupLabel()
        performContinuousAnimation()
    }
    
    private func setupLabel() {
        label.text = "TBC IT Academy"
        label.textAlignment = .center
        label.textColor = UIColor(red: 49/255, green: 175/255, blue: 199/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.sizeToFit()
        label.center = view.center
        label.alpha = 0
    }
    
    private func performContinuousAnimation() {
        UIView.animate(withDuration: 2.0, animations: {
            self.label.alpha = 1
            self.label.center.y -= 40
        }) { _ in
            UIView.animate(withDuration: 2.0, animations: {
                self.label.center.y += 40
                self.label.alpha = 0
            }) { _ in
                self.performContinuousAnimation()
            }
        }
    }
}
