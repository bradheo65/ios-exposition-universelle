//
//  KoreaItems.swift
//  Expo1900
//
//  Created by Brad, Groot on 2022/06/16.
//

import UIKit

class Expo1900ViewController: UIViewController {
    var expoData = ExpoData()

    let expo1900ScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let expo1900StackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let posterImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let visitorsLabel: UILabel = {
        let label = UILabel()
        label.text = "Visitors"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "location"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let durationLabel: UILabel = {
        let label = UILabel()
        label.text = "duration"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "description"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(expo1900ScrollView)
        setScrollViewConstraints()
        [titleLabel, posterImageView, visitorsLabel, locationLabel, durationLabel, descriptionLabel]
            .forEach {self.expo1900StackView.addArrangedSubview($0)}
        self.expo1900ScrollView.addSubview(expo1900StackView)
        setStackViewConstraints()
        expoData.decodingJsonData()
        titleLabel.text = expoData.title
        visitorsLabel.text = expoData.visitors
        locationLabel.text = expoData.location
        durationLabel.text = expoData.duration
        descriptionLabel.text = expoData.description
    }

    private func setScrollViewConstraints() {
        expo1900ScrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        expo1900ScrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        expo1900ScrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        expo1900ScrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
    }
    
    private func setStackViewConstraints() {
        expo1900StackView.topAnchor.constraint(equalTo: expo1900ScrollView.contentLayoutGuide.topAnchor).isActive = true
        expo1900StackView.bottomAnchor.constraint(equalTo: expo1900ScrollView.contentLayoutGuide.bottomAnchor).isActive = true
        expo1900StackView.leadingAnchor.constraint(equalTo: expo1900ScrollView.contentLayoutGuide.leadingAnchor).isActive = true
        expo1900StackView.widthAnchor.constraint(equalTo: expo1900ScrollView.frameLayoutGuide.widthAnchor).isActive = true
        expo1900StackView.trailingAnchor.constraint(equalTo: expo1900ScrollView.contentLayoutGuide.trailingAnchor).isActive = true
    }
}

