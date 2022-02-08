//
//  ContentView.swift
//  Farm
//
//  Created by Yusuf Miletli on 8.02.2022.
//

import SwiftUI
import Dogs

struct ContentView: View {

    let dogs = DogsInFarm()

    var body: some View {
        Button("Tap to bark") {
            print(dogs.speak())
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
