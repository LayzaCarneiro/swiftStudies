//
//  circularSentence.cpp
//  Studies
//
//  Created by Layza Maria Rodrigues Carneiro on 03/11/24.
//

#include <iostream>
#include <string>
#include <sstream>

using namespace std;

class Solution {
public:
    bool isCircularSentence(string sentence) {
        vector<string> words;
        stringstream ss(sentence);
        string word;

        while(ss >> word) words.push_back(word);
             
        for(int i = 0; i < words.size() - 1; i++)
        {
            char actual = words[i][words[i].size() - 1];
            if(actual != words[i+1][0])
                return false;
        }
        
        string last = words[words.size() - 1];
        if(last[last.size() - 1] != words[0][0]) return false;

        return true;
    }
};
