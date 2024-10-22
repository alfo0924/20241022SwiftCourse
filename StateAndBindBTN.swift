import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false
    
    var body: some View {
        Button(action: {
            // Switch between the play and stop button
            self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .red : .green)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
