//
//  ContentView.swift
//  Project
//
//  Created by eyh.mac on 17.08.2023.
//

import SwiftUI

struct HistoricalArtifact: Identifiable {
    var id = UUID()
    var era: String
    var description: String
    var imageName: String
}

let sampleArtifacts = [
    HistoricalArtifact(era: "Catle Cow",
                       description: "Cattle is a term that describes large and domesticated mammals, especially those belonging to the bovine family. This family includes species such as ox, cow, bull. Cattle are raised worldwide to provide meat, milk, leather and labor. They have an important place in human history and form part of agriculture, nutrition and economic activities.Cow is the name given to female cattle. Cows are widely bred for milk production. Milk is a valuable nutrient that has an important place in human nutrition. Cows can also be used for meat production, but usually bulls specially bred for beef production or castrated oxen are more preferable.Cow is the name given to female cattle. Cows are widely bred for milk production. Milk is a valuable nutrient that has an important place in human nutrition. Cows can also be used for meat production, but usually bulls specially bred for beef production or castrated oxen are more preferable.The general characteristics of cows can be:Physical Characteristics: Cows are usually large-bodied animals. Depending on the types of cattle, their colors and patterns may vary. Some breeds may be spotted, while others may be monochrome.Social Behaviors: Cows are social animals and usually live in groups Decoupled together. Communication between cows takes place by touch and some body movements. Dec.Nutrition: Cows are herbivores, that is, their main food sources are plants. They feed on foods such as grass, hay,",
                       imageName: "image1"),
]

struct ContentView: View {
    var artifact: HistoricalArtifact
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView{
            VStack{
                Image(artifact.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea(edges: .top)
                    .offset(y: -10)
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 512, height: 512)
                        .background(Color.white)
                        .blur(radius: 50)
                        .offset(y: -520)
                   Text("Cattle Cow")
                        .font(Font.custom("Bebas neue", size: 60))
                        .foregroundColor(.black)
                        .frame(width: 368, alignment: .topLeading)
                        .offset(y: -670)
                    
                    Text(artifact.description)
                        .font(Font.custom("Iowan Old Style", size: 20))
                        .foregroundColor(.black)
                        .frame(width: 368, alignment: .topLeading)
                        .offset(y: -70)
                    
                     
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(artifact: sampleArtifacts[0])
    }
}
