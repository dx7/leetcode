#include <stdbool.h>

bool search(char** board, int boardSize, int* boardColSize, int i, int j, char* word, int k) {
    if (i < 0 || i >= boardSize || j < 0 || j >= boardColSize[i] || board[i][j] != word[k]) {
        return false;
    }

    if (word[k] == '\0') {
        return true;
    }

    char tmp = board[i][j];
    board[i][j] = '\0';
    bool res = search(board, boardSize, boardColSize, i - 1, j, word, k + 1) ||
        search(board, boardSize, boardColSize, i + 1, j, word, k + 1) ||
        search(board, boardSize, boardColSize, i, j - 1, word, k + 1) ||
        search(board, boardSize, boardColSize, i, j + 1, word, k + 1);
    board[i][j] = tmp;

    return res;
}

bool exist(char** board, int boardSize, int* boardColSize, char* word) {
    for (int i = 0; i < boardSize; i++) {
        for (int j = 0; j < boardColSize[i]; j++) {
            if (search(board, boardSize, boardColSize, i, j, word, 0)) {
                return true;
            }
        }
    }

    return false;
}
