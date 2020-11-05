package com.TalentPath.BWL.TicTac.services;


import com.TalentPath.BWL.TicTac.daos.TicTacToeDao;
import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TicTacToeService {

    TicTacToeDao dao;

    @Autowired
    public TicTacToeService(TicTacToeDao dao) {
        this.dao = dao;
    }


    public Integer startNewGame() {
        /// add a game to database - return that game id
        return null;
    }

    public TicTacToeBoard getGameById(Integer gameId) {
        //  retrieve game board info from db
        return null;
    }

    public TicTacToeBoard updateGameById(Integer gameId) {
        // update info by game id in db
        return null;
    }


}
