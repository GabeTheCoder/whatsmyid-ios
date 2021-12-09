
import SwiftUI
import NotPWA2

enum BridgeHook: String {
    case fetchContacts
    case fetchPhotos
}

struct BridgeError: Error {
    let code: String
    let message: String
}

class AppConfig: WebAppConfiguration, ObservableObject {
    override var url: URL? { URL(string: "https://whatsmy.id") }
    override var debug: Bool { true }
    override var scrollManagedByApp: Bool { true }
}

struct ContentView: View {
    
    @ObservedObject var config = AppConfig()
    
    var body: some View {
        WebView(config: config)
            .background(Color(.displayP3, red: 248 / 255, green: 245 / 255, blue: 242 / 255, opacity: 1.0))
            .ignoresSafeArea(.all)
            .onAppear {
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
