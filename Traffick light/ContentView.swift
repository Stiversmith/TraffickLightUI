import SwiftUI

struct TrafficLightView: View {
    @State private var selectedLight = 1
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 59 / 255, green: 56 / 255, blue: 200 / 255), Color(red: 78 / 255, green: 82 / 255, blue: 228 / 255)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                ZStack {
                    Circle()
                        .foregroundColor(selectedLight == 1 || selectedLight == 2 || selectedLight == 5 ? .red : .gray)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    Circle()
                        .stroke(Color.white, lineWidth: 5)
                        .frame(width: 120, height: 120)
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(selectedLight == 2 || selectedLight == 4 ? .yellow : .gray)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    Circle()
                        .stroke(Color.white, lineWidth: 5)
                        .frame(width: 120, height: 120)
                }
                
                ZStack {
                    Circle()
                        .foregroundColor(selectedLight == 3 ? .green : .gray)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                    Circle()
                        .stroke(Color.white, lineWidth: 5)
                        .frame(width: 120, height: 120)
                }
                
                Button(action: {
                    selectedLight += 1
                    if selectedLight >= 5 {
                        selectedLight = 1
                    }
                }) {
                    Text("Пуск")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TrafficLightView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
