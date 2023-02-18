//
//  IndividualScore.swift
//  War
//
//  Created by Brandon Coston on 2/18/23.
//

import SwiftUI

struct IndividualScore: View {
    let Name: String
    let Score: Int
    var body: some View {
        VStack {
            Text(Name)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.bottom, 10)
            Text(String(Score))
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct IndividualScore_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            IndividualScore(Name: "Bob", Score: 12)
        }
    }
}
