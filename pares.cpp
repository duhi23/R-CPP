//
//  main.cpp
//  Pares
//
//  Created by Diego Huaraca on 23/11/15.
//  Copyright © 2015 Diego Huaraca. All rights reserved.
//

/*
#include <iostream>

using namespace std;

int main() {
    int n=100;
    cout << "Mostramos los primeros 100 números pares:";
    for(int i=1; i<=100; i++){
        cout << 2*i << " ";
    }
    return 0;
}
*/


#include <iostream>

using namespace std;


int par (int n){
    return 2*n;
}

int main(){
    int num;
    cout << "Cuántos números pares desea? : " << endl;
    cin >> num;
    for(int i=1; i<=num; i++){
        cout << par(i) << " ";
    }
    return 0;
}
