//
//  AlbumRow.swift
//  iOS_Challenge
//
//  Created by Arturo Diaz on 24/05/22.
//

import SwiftUI

// Album Row w/ artwork, title and artist
struct AlbumRow: View {
    var album: Album
    var body: some View {
        
            HStack(alignment: .center, spacing: 15) {
                AsyncImage(url: URL(string: album.artworkUrl100 ?? ""))
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 15)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(album.collectionName ?? "No name")
                        .foregroundColor(.primary)
                        .font(.body)
                    
                    Text(album.artistName ?? "No artist")
                        .foregroundColor(.secondary)
                        .font(.subheadline)
                }
                Spacer()
            }
        
    }
}

struct AlbumRow_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRow(album: Album.defaultAlbum)
    }
}
