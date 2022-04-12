//
//  OtherView .swift
//  StarCafe
//
//  Created by 곽희상 on 2022/04/12.
//

import SwiftUI

struct OtherView_: View {
    var body: some View {
        NavigationView{
            Text("Other")
                .navigationTitle("Other")
                .toolbar{
                    NavigationLink(
                        destination: Text("destination"),
                        label: {
                            Image(systemName: "gear")
                        })
                }
        }
    }
}

struct OtherView__Previews: PreviewProvider {
    static var previews: some View {
        OtherView_()
    }
}
