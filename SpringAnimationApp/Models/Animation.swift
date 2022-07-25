//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Izyumets Aleksandr on 15.07.2022.
//

struct Animation {
    let animationType: String!
    let curve: String!
    let force: Float!
    let duration: Float!
    let delay: Float!
    
    static func getAnimation() -> Animation {
        Animation(
            animationType: DataManager.shared.animations.randomElement(),
            curve: DataManager.shared.curves.randomElement(),
            force: Float.random(in: 0.5...1.5),
            duration: Float.random(in: 0.7...1.5),
            delay: Float.random(in: 0.3...0.8)
        )
    }
}
