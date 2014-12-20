#include <bits/stdc++.h>
using namespace std;
/*
 * Arguments:
 * 1) Nombre ciutats.
 * 2) Min dies
 * 3) Max dies
 * 4) Arestes extres (0 vol dir que fotrem un arbre)
 * 5) Maxim hotels per ciutat
 * 6) Nom problema
 */

int spaceLevel = 0;

void printSpaces() {
    cout << string(spaceLevel*4, ' ');
}

int rep(vector<int>& G, int u) {
    if(G[u]==u) return u;
    return G[u] = rep(G,G[u]);
}

int unir(vector<int>& G, int u, int v) {
    G[rep(G,u)] = G[rep(G,v)];
}

int main(int argc, char** argv) {
    srand(time(NULL));
    int numCiutats = atoi(argv[1]);
    int minDies = atoi(argv[2]);
    int maxDies = atoi(argv[3]);
    int extraEdges = atoi(argv[4]);
    int maxHotels  = atoi(argv[5]);
    int connectedComponents = numCiutats;
    vector<int> G(numCiutats);
    for(int i=0; i<numCiutats; ++i)
        G[i] = i;
    set< pair<int,int> > E;
    while(connectedComponents>1) {
        int u = rand()%numCiutats;
        int v = rand()%numCiutats;
        while(rep(G,u)==rep(G,v) or u==v or E.find(make_pair(u,v))!=E.end() or E.find(make_pair(v,u))!=E.end()) {
            u = rand()%numCiutats;
            v = rand()%numCiutats;
        }
        unir(G,u,v);
        E.insert(make_pair(u,v));
        --connectedComponents;
    }
    int remaining = min(extraEdges, (numCiutats*(numCiutats-1)/2) - (numCiutats-1));
    while(remaining>0) {
        int u = rand()%numCiutats;
        int v = rand()%numCiutats;
        while(u==v or E.find(make_pair(u,v))!=E.end() or E.find(make_pair(v,u))!=E.end()) {
            u = rand()%numCiutats;
            v = rand()%numCiutats;
        }
        E.insert(make_pair(u,v));
        --remaining;
    }
    
    vector< vector<int> > H(numCiutats, vector<int>());
    int hotelp = 0;
    for(int i=0; i<numCiutats; ++i) {
        int hot = max(1,rand()%maxHotels);
        for(int j=0; j<hot; ++j) H[i].push_back(hotelp++);
    }
    
    cout << "(define (" << argv[6] << ")" << endl;
    ++spaceLevel;
    printSpaces();
    cout << "(:requirements :strips :fluents)" << endl;
    printSpaces();
    cout << "(:domain travel-strips)" << endl;
    printSpaces();
    cout << "(:objects ";
    ++spaceLevel;
    for(int i=0; i<numCiutats; ++i)
        cout << "c" << i+1 << " ";
    cout << " - city" << endl;
    ++spaceLevel;
    printSpaces();
    --spaceLevel;
    cout << "  ";
    for(int i=0; i<numCiutats; ++i)
        for(int j=0; j<H[i].size(); ++j)
            cout << "h" << H[i][j]+1 << " ";
    cout << " - hotel)" << endl;
    --spaceLevel;
    printSpaces();
    ++++spaceLevel;
    cout << "(:init  ";
    int endline = 1;
    for(set< pair<int,int> >::iterator it = E.begin(); it!= E.end(); ++it) {
        cout << "(connected c" << it->first + 1 << " c" << it->second + 1 << ") ";
        if(endline%3 == 0) { 
            cout << endl; printSpaces();
            endline = 1;
        }
        else ++endline;
    }
    endline = 1;
    for(int i=0; i<numCiutats; ++i) {
        for(int j=0; j<H[i].size(); ++j) {
            cout << "(hotel-in c" << i+1 << " h" << H[i][j]+1 << ") ";
            if(endline%3 == 0) { 
                cout << endl; printSpaces();
                endline = 1;
            }
            else ++endline;
        }
    }
    cout << endl;
    ----spaceLevel;
    printSpaces();
    cout << ")" << endl;
    cout << ")" << endl;
    
}