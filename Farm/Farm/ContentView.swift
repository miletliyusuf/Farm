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
        VStack {
            Button("Tap to bark") {
                print(dogs.speak())
            }
            Button("Tap to see number of foots") {
                print(dogs.footNumber())
            }
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
