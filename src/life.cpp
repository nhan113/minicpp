
#include <iostream>
#include "Life.hpp"
using namespace std;

//First, create an customer database. Then store in a file record.json. How to view
int main() {
   	Game::Matrix	gof(10,20);

   	cout << "Start Life" <<endl;
	gof.matrixConf(5,5,1);
	gof.matrixConf(5,6,1);
	gof.matrixConf(5,7,1);
   	
   	
   	gof.matrixPrint();
    return 0;
}
