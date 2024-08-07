//#include <bits/stdc++.h>
//#define ll long long
//#define pb push_back
//#define in insert
//#define REP(i, a, b) for(int i = a; i < b; i++)
//#define _ cin.tie(0)->sync_with_stdio(0);
//using namespace std;
//
//int main() { _
//    int n, m; cin >> n >> m;
//    ll h;
//    map<ll, int> tickets;
//    
//    REP(i, 0, n){
//        cin >> h;
//        tickets.in({h, 1});
//    }
//
//    ll t;
//    while(m--) {
//        cin >> t;
//        ll value = -1;
//        
//        while(t > 0) {
//            if(tickets[t] == 1){
//                value = t;
//                tickets[t] = -1;
//                break;
//            }
//            t--;
//        }
//        
//        cout << value << endl;
//    }
//    
//    return 0;
//}
