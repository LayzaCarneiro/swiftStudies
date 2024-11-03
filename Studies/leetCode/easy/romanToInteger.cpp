//
//  romanToInteger.cpp
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 03/11/24.
//

#include <iostream>
#include <string>

using namespace std;

// USING MAP
//
class Solution {
public:
    int romanToInt(string s) {
        int o = 0;

        unordered_map<char, int> map;

        map['I'] = 1;
        map['V'] = 5;
        map['X'] = 10;
        map['L'] = 50;
        map['C'] = 100;
        map['D'] = 500;
        map['M'] = 1000;

        for(int i = 0; i < s.size(); i++) {
            if(map[s[i]] < map[s[i + 1]]) o -= map[s[i]];
            else o += map[s[i]];
        }

        return o;
    }
};

// BRUTE FORCE
//
//class Solution {
//public:
//    int romanToInt(string s) {
//        int o = 0;
//
//        for(int i = s.size() - 1; i >= 0; i--) {
//            cout << o << endl;
//            if(s[i] == 'I') o += 1;
//            else if(s[i] ==  'V') {
//                if((i-1 > -1) && s[i-1] == 'I'){
//                    i--;
//                    o += 4;
//                }
//                else o += 5;
//            }
//            else if(s[i] == 'X') {
//                if((i-1 > -1) && s[i-1] == 'I'){
//                    i--;
//                    o += 9;
//                }
//                else o += 10;
//            }
//            else if(s[i] == 'L') {
//                if((i-1 > -1) && s[i-1] == 'X') {
//                    i--;
//                    o += 40;
//                }
//                else o += 50;
//            }
//            else if(s[i] == 'C') {
//                if((i-1 > -1) && s[i-1] == 'X') {
//                    i--;
//                    o += 90;
//                }
//                else o += 100;
//            }
//            else if(s[i] == 'D') {
//                if((i-1 > -1) && s[i-1] == 'C') {
//                    i--;
//                    o += 400;
//                }
//                else o += 500;
//            }
//            else if(s[i] == 'M') {
//                if((i-1 > -1) && s[i-1] == 'C') {
//                    i--;
//                    o += 900;
//                }
//                else o += 1000;
//            }
//        }
//
//        return o;
//    }
//};
