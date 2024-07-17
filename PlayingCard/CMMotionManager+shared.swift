//
//  CMMotionManager+shared.swift
//  PlayingCard
//
//  Created by Alexander on 25.07.2022.
//

import CoreMotion

// мы добавляем статический var
// чтобы мы могли получить "общий" CMMotionManager
// который мы могли бы использовать во всем нашем приложении
// просто обратившись к CMMotionManager.shared

extension CMMotionManager {
    static var shared = CMMotionManager()
}

