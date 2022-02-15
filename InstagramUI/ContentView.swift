//
//  ContentView.swift
//  InstagramUI
//
//  Created by admin on 15/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //THE HEADING
        VStack(spacing : 0) {
            Header()
           
            //story
            ScrollView(.vertical,showsIndicators: false) {
                Stories()
                Divider()
                
                Post()
              
                
                
                Post(image: "image3", description: "apple for life")
           
            }
            Tab()
            
            
   //END OF HEADING
    
    
        
        
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            
            HStack(spacing : 20) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
            
            
        }.padding(.horizontal,15)
            .padding(.vertical,3)
    }
}

struct Story: View {
    var image : String = "profile"
    var text : String = "Emman Xp"
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
                
                    
               
            
               
            }.overlay (
                Circle()
                    .stroke(LinearGradient(colors: [.red , .purple ,. red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing),lineWidth: 2.3)
                    .frame(width: 68, height: 68)
                
               
            ).frame(width: 70, height: 70)
            Text(text)
                .font(.caption)
            .padding(.vertical,5)
        }
      
            
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 15.0) {
                Story()
                Story(image: "profile2", text: "Meng to")
                Story(image: "profile3", text: "CheckPoint")
                Story(image: "profile4", text: "Chanty")
                Story(image: "profile5", text: "Mable")
                Story(image: "profile6", text: "charllotte")
                
                
            }.padding(.horizontal,8)
        }.padding(.vertical,10)
    }
}



}

struct Post: View {
    
    var image : String = "profile"
    var description: String = "i love coding & my family"
   
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            
            PostHeader()
            PostContent(image: image)
            
            
            Text("Liked by Meng To and others")
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity, alignment: .leading)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7.0) {
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
                
            }.padding(.horizontal,12)
                .padding(.vertical,9)
            
        }
    }
}

struct Tab: View {
    var body: some View {
        VStack{
            Divider()
            
            HStack {
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21, alignment: .center)
                    .cornerRadius(50)
            }
            .padding(.top, 10)
            .padding(.horizontal, 25)
            
            
            
        }
    }
}
