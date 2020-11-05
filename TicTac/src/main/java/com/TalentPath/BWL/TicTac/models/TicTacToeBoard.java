package com.TalentPath.BWL.TicTac.models;

import java.util.List;

public class TicTacToeBoard {
    Integer gameId; /// auto gen sequence
    String gameState;       // size limit 30 chars
    String gamePassword;    // size limit 30 chars
    String[] gameBoard = {"u","u","u","u","u","u","u","u","u"};
    List<TicTacToeMove> allMoves;



    public List<TicTacToeMove> getAllMoves() {
        return allMoves;
    }

    public void setAllMoves(List<TicTacToeMove> allMoves) {
        this.allMoves = allMoves;
    }




    public String[] getGameBoard() {
        return gameBoard;
    }

    public void setGameBoard(String[] gameBoard) {
        this.gameBoard = gameBoard;
    }


    public Integer getGameId() {
        return gameId;
    }

    public void setGameId(Integer gameId) {
        this.gameId = gameId;
    }

    public String getGameState() {
        return gameState;
    }

    public void setGameState(String gameState) {
        this.gameState = gameState;
    }

    public String getGamePassword() {
        return gamePassword;
    }

    public void setGamePassword(String gamePassword) {
        this.gamePassword = gamePassword;
    }

}
