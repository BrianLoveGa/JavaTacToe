package com.TalentPath.BWL.TicTac.daos;


import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;

public interface TicTacToeDao {

    TicTacToeBoard addGame();
    // add a game to db - return the game id using getGameId()

    TicTacToeBoard getNewGameId();
    // return id of new created game to use

    TicTacToeBoard getBoardFromGameId();
    // return board info by game id

    TicTacToeBoard updateBoardByGameId();

    TicTacToeBoard updateGameByGameId();


    /// make moves



    void reset();
    /// to reset database for testing

}
