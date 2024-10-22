import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("swiftui-button")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("SwiftUI")
                .font(.headline)
                .foregroundColor(.secondary)
            
            Text("Drawing a Border with Rounded Corners")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(3)
            
            Text("Written by Vikash".uppercased())
                .font(.caption)
                .foregroundColor(.secondary)
            
            Spacer()
        }
        .padding()
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
