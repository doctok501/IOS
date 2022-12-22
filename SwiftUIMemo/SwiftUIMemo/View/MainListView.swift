//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by 김인겸 on 2022/12/18.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store : Memostore
    
    @State private var showComposer : Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.list) { memo in
                    NavigationLink {
                        DetailView(memo: memo)
                    } label: {
                        MemoCell(memo: memo)
                    }
                }
                .onDelete(perform: store.delete)
            }
            .listStyle(.plain)
            .navigationTitle("인개미 메모장><")
            .toolbar {
                Button {
                    showComposer = true
                } label: {
                    Image (systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer) {
                ComposeView()
            }
            
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(Memostore())
    }
}

 
