//
//  ProductListView.swift
//  ProductListDemo
//
//  Created by Ivan Konukhov on 06.08.24.
//

import SwiftUI

// Отображение списка продуктов гридами и списком
struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    @State private var isGridView: Bool = true
    
    var body: some View {
        NavigationView {
            Group {
                if isGridView {
                    GridView(products: viewModel.products)
                } else {
                    ListView(products: viewModel.products)
                }
            }
            .navigationTitle("Products")
            .navigationBarItems(trailing: Button(action: {
                isGridView.toggle()
            }) {
                Image(systemName: isGridView ? "list.dash" : "square.grid.2x2")
            })
        }
    }
}

/// GridView displaying products in a grid format
struct GridView: View {
    let products: [Product]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                ForEach(products) { product in
                    ProductGridItemView(product: product)
                }
            }
        }
    }
}

/// ListView displaying products in a list format
struct ListView: View {
    let products: [Product]
    
    var body: some View {
        List(products) { product in
            ProductListItemView(product: product)
        }
    }
}

/// View representing a single product in the grid view
struct ProductGridItemView: View {
    let product: Product
    
    var body: some View {
        VStack {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Text(product.name)
                .font(.headline)
            Text("$\(product.currentPrice, specifier: "%.2f")")
                .font(.subheadline)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(8)
    }
}

/// View representing a single product in the list view
struct ProductListItemView: View {
    let product: Product
    
    var body: some View {
        HStack {
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                Text("$\(product.currentPrice, specifier: "%.2f")")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

