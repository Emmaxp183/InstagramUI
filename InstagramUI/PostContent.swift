//
//  PostContentz.swift
//  InstagramUI
//
//  Created by admin on 15/02/2022.
//

import SwiftUI

struct PostContent: View {
    var image : String = "image2"
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .scaledToFit()
            HStack{
                HStack {
                    Image("heart")
                    Image("comment")
                    Image("share")
                    
                }
                Spacer()
                Image("bookmark")
            }.padding(.horizontal,12)
                .padding(.vertical,9)
           
            
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}
}
