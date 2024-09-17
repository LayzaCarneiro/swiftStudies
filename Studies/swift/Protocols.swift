//
//  Protocols.swift
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 07/08/24.
//

import SwiftUI

struct CustomerModel {
    var id: String
    var name: String
    var points: Int
    var isPremium: Bool
}

class CodableViewModel: ObservableObject {
    @Published var customer: CustomerModel? = nil
    
    init() {
        getData()
    }
    
    func getData() {
        
        guard let data = getJSONData() else { return }
        
        print("JSON DATA: \n \(data)")
        
    }
    
    func getJSONData() -> Data? {
        
        let dictionary: [String: Any] = [
            "id": "123456",
            "name": "Maria",
            "points": 25,
            "isPremium": true
        ]
        
        let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: [])
        
        return jsonData
        
    }
}

struct Protocols: View {
    @StateObject var vm = CodableViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            if let customer = vm.customer {
                Text(customer.id)
                Text(customer.name)
                Text("\(customer.points)")
                Text("\(customer.isPremium)")
                
            }
        }
    }
}

#Preview {
    Protocols()
}
