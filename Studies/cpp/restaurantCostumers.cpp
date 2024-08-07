//#include <bits/stdc++.h>
//#define ll long long
//#define pb push_back
//#define REP(i, a, b) for(int i = a; i < b; i++)
//#define _ cin.tie(0)->sync_with_stdio(0);
//using namespace std;
//
//vector<pair<ll, ll>> vetor;
//
//int main() { _
//    int n; cin >> n;
//    REP(i, 0, n) {
//        int start, end;
//        cin >> start >> end;
//        vetor.pb({start, 1});
//        vetor.pb({end, -1});
//    }
//    
//    sort(vetor.begin(), vetor.end());
//    
//    int maximo = 0, qtdAtual = 0;
//    REP(i, 0, 2*n) {
//        qtdAtual += vetor[i].second;
//        maximo = max(maximo, qtdAtual);
//    }
//    
//    cout << maximo << endl;
//    
//    return 0;
//}
//
////3
//// 5 8
//// 2 4
//// 3 9
//
//// [(2, 1), (4, -1), (5, 1), (8, -1), (3, 1), (9, -1)]
//// [(2, 1), (3, 1), (4, -1), (5, 1), (8, -1), (9, -1)]
