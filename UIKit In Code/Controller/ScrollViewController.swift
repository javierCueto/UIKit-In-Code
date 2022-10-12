//
//  ScrollViewController.swift
//  UIKit In Code
//
//  Created by Javier Cueto on 11/10/22.
//

import UIKit

final class ScrollViewController: UIViewController {
    // MARK: - Public properties
    var mainScrollView = UIScrollView()
    
    var contentView = UIView()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Private properties
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Scroll View"
        
        configViews()
    }
    
    // MARK: - Helpers
    private func configViews() {
        
        configScroll()
        
        contentView.addSubview(redView)
        redView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        redView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        redView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        contentView.addSubview(blueView)
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
        blueView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        blueView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        blueView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        contentView.addSubview(yellowView)
        yellowView.topAnchor.constraint(equalTo: blueView.bottomAnchor).isActive = true
        yellowView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        yellowView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        yellowView.heightAnchor.constraint(equalToConstant: 500).isActive = true
    }
    
    // MARK: - Actions
    
}

// MARK: - Extensions here

extension ScrollViewController: ViewScrollable { }
