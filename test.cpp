#include "shared.hpp"
#include <iostream>

using namespace std;

int main() {
   int a=dummy();
   cout << "Dummy executed fine: " << a << endl;
   // Crashes here
   auto dtype = getDType();
   cout << "Everything's fine" << endl;
}
