import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack(spacing:20){
            Text("こんにちは！")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("私はおだたかまさです")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text("🎵趣味:音楽を聴くこと🎵")
                .font(.title2)
                .padding(16)
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
                .foregroundColor(.white)
            Text("SwiftUIを使って、いろんなアプリを作ってみたいです！")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(16)
                .foregroundColor(.white)
        }
        .padding(24)
        .background(
            LinearGradient(
                gradient: Gradient(colors:[Color.blue,Color.purple]),
                startPoint:.top,endPoint:.bottom
            )
        )
        .cornerRadius(20)
        .padding(16)
        .shadow(radius:10)
    }
}
