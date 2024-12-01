import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack{
            VStack(spacing: 20){
                HStack {
                    Image("sky")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .position(x: 155, y: 300)
                    
                    Image("cast")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 300)
                        .position(x: 1, y: 350)
                }
                
                
                
                Text("Please provide your current location to get the weather in your area")
                    .padding()
                    .foregroundColor(.white)
                    .position(x: 180, y: 190)
                
                    .multilineTextAlignment(.center)
                    .padding()
                
                LocationButton(.shareCurrentLocation) {
                    locationManager.requestLocation()
                }
                .cornerRadius(30)
                .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .position(x: 180, y: 15)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.black))
    }
}

#Preview {
    WelcomeView()
}
