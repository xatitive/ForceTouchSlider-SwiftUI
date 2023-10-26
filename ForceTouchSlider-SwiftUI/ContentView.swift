//
//  ContentView.swift
//  ForceTouchSlider-SwiftUI
//
//  Created by Christian Norton on 8/16/23.
//

import SwiftUI
import AppKit

struct ContentView: View {
    @State private var value = 0.5

    var body: some View {
        VStack {
            Slider(value: $value)
                .frame(width: 512.0, height: 256.0)
                .onChange(of: value) { newValue in
                    let intensity = CGFloat(newValue)
                    let pattern = NSHapticFeedbackManager.FeedbackPattern(rawValue: NSHapticFeedbackManager.FeedbackPattern.generic.rawValue)
                    NSHapticFeedbackManager.defaultPerformer.perform(NSHapticFeedbackManager.FeedbackPattern.generic, performanceTime: NSHapticFeedbackManager.PerformanceTime.now)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
