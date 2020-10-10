// gcc addNumbers_asm.cpp -S

#include <iostream>
using namespace std;
 
int main() {
    double a, b; 
    cout << "Введите 1-е и 2-е число: ";
    cin >> a >> b;
    cout << (a+b) << endl;
    return 0;
}