//
//  CrewSummary.swift
//  Moonshot
//
//  Created by Ali Khorramipour on 1/11/23.
//

import SwiftUI

struct CrewSummary: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack{
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                        }
                        VStack(alignment: .leading) {
                            Text(crewMember.astronaut.name)
                                .foregroundColor(.white)
                                .font(.headline)
                            Text(crewMember.role)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct CrewSummary_Previews: PreviewProvider {
    static var previews: some View {
        CrewSummary()
    }
}
