
import SwiftUI

struct ContentView: View {

    var body: some View {
 
        ZStack {
            
            ScrollView {
                VStack(spacing: 5){
                    Text("Testing is here ")
                    ForEach(0..<9) { i in
                        ExpandableView(thumbnail: ThumbnailView {
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("The art of being an artist")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(.blue)
                                    
                                    .font(.custom("ArialRoundedMTBold", size: 20))
                                
                                Text("Reading time: 3 mins")
                                    .font(.custom("ArialRoundedMTBold", size: 8))
                                    .foregroundStyle(.white)
                            }
                            .padding()
                            
                        }, expanded: ExpandedView{
                            VStack(alignment: .leading, spacing: 12) {
                                Text("The art of being an artist")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(.white)
                                    .font(.custom("ArialRoundedMTBold", size: 28))
                                
                                Text("Reading time: 3 mins")
                                    .font(.custom("ArialRoundedMTBold", size: 14))
                                    .foregroundStyle(.white)
                                
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                                    .font(.custom("ArialRoundedMT", size: 14))
                                    .foregroundStyle(.white)
                                
                                Spacer()
                            }
                            .padding()
                        }, thumbnailViewBackgroundColor: .gray.opacity(0.7), expandedViewBackgroundColor: .gray)
                    }
                }
            }
           // .background(.yellow)
            .scrollIndicators(.never)
            .padding()
        }
        .background(.yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
