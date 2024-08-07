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
//    ll x, n, h; cin >> x >> n;
//    multiset<ll> values;
//    
//    REP(i, 0, n) {
//        cin >> h;
//        values.in(h);
//    }
//    
//    ll size = 0, actual = 0;
//    
//    while(actual != x) {
//        auto it = values.begin(), nextIt = ++values.begin();
//        actual = *it + *nextIt;
//        size += actual;
//        values.in(actual);
//        values.erase(it);
//        values.erase(nextIt);
//    }
//    
//    cout << size << endl;
//    
//    
//    return 0;
//}
//
//
