//
//  NotificationView.swift
//  ControlRoom
//
//  Created by Vasilis Akoinoglou on 15/2/20.
//  Copyright © 2020 Paul Hudson. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    @State private var title: String = "Notification Title"
    @State private var text: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"

    var body: some View {

        VStack(alignment: .leading) {
            HStack {
                RoundedRectangle(cornerRadius: 4)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.green)
                Text("CONTROL ROOM")
                Spacer()
                Text("now")
            }.frame(height: 24)
            VStack(spacing: 2) {
                TextField("Notification Title", text: $title)
                    .textFieldStyle(PlainTextFieldStyle())
                    .font(Font.system(size: 14).bold())
                    .padding(.horizontal, 8)
                TextView(text: $text,
                         backgroundColor: NSColor.clear,
                         textColor: .black,
                         font: NSFont.systemFont(ofSize: 14))
                    .padding(.horizontal, 4)
            }
        }
        .foregroundColor(Color.black)
        .padding(8)
        .background(Color.white.opacity(0.6))
        .clipShape(RoundedRectangle(cornerRadius: 15))

    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([ColorScheme.light, ColorScheme.dark], id: \.self) { scheme in
            ZStack {
                Image("Notification-bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                NotificationView()
                    .frame(width: 360, height: 120)
                    .padding()
            }
            .frame(height: 150)
            .colorScheme(scheme)
            .previewDisplayName(String(describing: scheme).capitalized)
        }
    }
}
