//
//  PlayerView.swift
//  MVVMPractice
//
//  Created by 곽희상 on 2022/05/15.
//

import UIKit
import SnapKit
import Then

final class PlayerView: UIView{
    
    private let imageView = UIImageView().then(){
        $0.image = UIImage(named: "OASIS")
    }
    
    private let nameLabel = UILabel().then(){
        $0.textAlignment = .center
        $0.font = .preferredFont(forTextStyle: .body)
        $0.textColor = .black
    }
 
    private let ageLabel = UILabel().then() {
        $0.textAlignment = .center
        $0.font = .preferredFont(forTextStyle: .body)
        $0.textColor = .black
    }
    
    private let transferFeeLabel = UILabel().then(){
        $0.textAlignment = .center
        $0.font = .preferredFont(forTextStyle: .body)
        $0.textColor = .black
    }
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .white
            
            addSubview(imageView)
            addSubview(nameLabel)
            addSubview(ageLabel)
            addSubview(transferFeeLabel)
            
            imageView.snp.makeConstraints{
                $0.width.equalTo(120)
                $0.height.equalTo(82)
                $0.centerX.equalToSuperview()
        }
    
    
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
