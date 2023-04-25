//
//  ContentView.swift
//  time tracking
//
//  Created by Filippo Orru on 03.01.23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      // Top bar
      HStack(spacing: 16) {
        
        // Current time tracking
        HStack(spacing: 12) {
          Button(
            action: {
              // play / pause
            },
            label: {
              Image(systemName: "pause")
                .padding(.horizontal, 12)
            }
          )
          Text("0:23:14")
        }
        
        Divider()
          .frame(height: 16)
        
        // Stats
        HStack(spacing: 16) {
          VStack(alignment: .leading) {
            Text("Today")
              .font(.subheadline.smallCaps())
            Text("1:10:12")
          }
          
          VStack(alignment: .leading) {
            Text("This week")
              .font(.subheadline.smallCaps())
            Text("1:10:12")
          }
          
          VStack(alignment: .leading) {
            Text("This month")
              .font(.subheadline.smallCaps())
            Text("1:10:12")
          }
        }
      }.frame(maxWidth: .infinity)
      
      Divider()
        .padding(.bottom, 16)
      
      // Body
      VStack(spacing: 0) {
        
        // Day select bar
        HStack {
          Button(
            action: {
              // play / pause
            },
            label: {
              Image(systemName: "calendar")
            }
          )
          
          Text("Today")
          
          Spacer()
          
          Button(
            action: {
              // play / pause
            },
            label: {
              Image(systemName: "chevron.left")
            }
          )
          Button(
            action: {
              // play / pause
            },
            label: {
              Image(systemName: "chevron.right")
            }
          )
        }.padding(.bottom, 16)
        
        Divider()
          .padding(.bottom, 8)
        
        HStack(spacing: 8) {
          // Daily tasks view
          ScrollView(.vertical) {
            VStack(spacing: 10) {
              ForEach(0..<100) { index in
                Text("\(index)")
              }
            }.frame(maxWidth: .infinity)
          }
          
          //Divider()
          
          ScrollView(.vertical) {
            VStack(spacing: 0) {
              ForEach(0..<24) { index in
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                  .fill(Color.red.opacity(0))
                  .frame(height: 40)
                  .overlay(Text("\(index)"))
                Divider()
                  .padding(.vertical, 2)
            
              }
            }
            .padding(.horizontal, 8)
            .frame(maxWidth: .infinity)
          }
        }.frame(height: 400)
      }
    }
    .padding()
    .fixedSize(horizontal: true, vertical: false)
    //.frame(minWidth: 400)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
