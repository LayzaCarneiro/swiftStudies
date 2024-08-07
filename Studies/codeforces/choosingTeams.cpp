//#include <bits/stdc++.h>
//
//#define ll long long
//#define pb push_back
//#define in insert
//#define REP(i, a, b) for(int i = a; i < b; i++)
//#define _ cin.tie(0)->sync_with_stdio(0);
//using namespace std;
//
//int main() {
//    _
//    int n, k, y; cin >> n >> k;
//    vector<int> values(n);
//    
//    REP(i, 0, n) {
//        cin >> y;
//        values[i] = y + k;
//    }
//      
//    sort(values.begin(), values.end());
//    
//    int times = 0, qtd = 0;
//    REP(i, 0, n) {
//        if(values[i] > 5) return cout << times << endl, 0;
//        else qtd++;
//        
//        if(qtd == 3) {
//            times++;
//            qtd = 0;
//        }
//    }
//    
//    
//    return cout << times << endl, 0;
//}
//
//// 5 2
//// 0 4 5 1 0
//
//
//
