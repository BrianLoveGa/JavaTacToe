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

        TicTacToeBoard toAdd = dao.addGame();
        return toAdd.getGameId();
    }

    public TicTacToeBoard getGameById(Integer gameId) {
        //  retrieve game board info from db based on game id
        return null;
    }

    public TicTacToeBoard updateGameById(Integer gameId) {
        // update info in db by game id
        return null;
    }


}
