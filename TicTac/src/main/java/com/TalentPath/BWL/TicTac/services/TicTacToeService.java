package com.TalentPath.BWL.TicTac.services;


import com.TalentPath.BWL.TicTac.daos.TicTacToeDao;
import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicTacToeService {

    TicTacToeDao dao;

    @Autowired
    public TicTacToeService(TicTacToeDao dao){this.dao = dao;}



    public Integer startNewGame() {

        TicTacToeBoard freshGame = new TicTacToeBoard();
        return freshGame.getGameId();

    }
}
