namespace Game
{
	using namespace std;

	class Matrix {
		int numRow, numCol;
		int** p_matrix;
	public:
		Matrix(int row, int col) {
			int i,j;
			numRow = row;
			numCol = col;
			p_matrix =  new int*[row];
			for (i=0; i < col; i++)
				p_matrix[i]= new int[col];
			for (i=0;i < numRow; i++) {
				for (j=0;j < numCol; j++) {
					p_matrix[i][j] = 0;
				}
			}
		}

		// ~Matrix() {
		// 	int i;
		// 	for (i=0;i < numRow; i++)
		// 		delete [] this->p_matrix[i];

		// 	delete [] this->p_matrix;
		// }

		int matrixConf(int row, int col, int value) {
			p_matrix[row][col] = value;
			return 0;
		}

		void matrixPrint() {
			int i,j;

			for (i=0;i < this->numRow; i++) {
				cout << endl;
				for (j=0;j < this->numCol; j++) {
					if(this->p_matrix[i][j] == 0) {
						cout << " ";
					}
					if(this->p_matrix[i][j] == 1) {
						cout << "*";
					}
				}
			}
			return 0;
		}


	};
		
	// G!ame of life
	// class Life {
	// 	Matrix matrix;
	// public:
	// 	Life() {

	// 	}

	// 	int nextStep(Life *input) {

	// 	}
	// };
}
