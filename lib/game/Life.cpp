namespace Game
{

	class Matrix {
		int numRow, numCol, i,j;
		int** p_matrix;
	public:
		Matrix(int row, int col) {
			numRow = row;
			numCol = col;
			p_matrix =  new int[numRow][numCol];
			for (i=0;i < numRow; i++) {
				for (j=0;j < numRow; j++) {
					p_matrix[i][j] = 0;
				}
			}
		}
		
		~Matrix() {
			delete []p_matrix;
		}

		int matrixConf(int row, int col, int value) {
			p_matrix[row][col] = value;
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
