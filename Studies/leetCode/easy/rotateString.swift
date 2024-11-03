//
//  rotateString.swift
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 03/11/24.
//

// SWIFT
class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        var original = s
        let n = s.count
        
        for i in 0..<n
        {
            let char = s[s.index(s.startIndex, offsetBy: i)]
            original.append(char)

            let startIndex = original.index(original.endIndex, offsetBy: -n)
            let lastCharacters = original[startIndex..<original.endIndex]
            if lastCharacters == goal
            {
                return true
            }
        }

        return false
    }
}

// CPP
//
//class Solution {
//public:
//    bool rotateString(string s, string goal) {
//        
//        int n = s.size();
//        for(int i = 0; i < n; i++)
//        {
//            s += s[i];
//            if(s.substr(i, n) == goal) return true;
//        }
//
//        return false;
//    }
//};
