package com.TalentPath.BWL.TicTac.daos;


import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Component
@Profile({"servicetesting", "inmemtesting"})
public class InMemTicTacToeDao implements TicTacToeDao {
    @Override
    public TicTacToeBoard addGame(TicTacToeBoard toAdd) {
        return null;
    }

    @Override
    public TicTacToeBoard getNewGameId() {
        return null;
    }

    @Override
    public TicTacToeBoard getBoardFromGameId() {
        return null;
    }

    @Override
    public TicTacToeBoard updateBoardByGameId() {
        return null;
    }

    @Override
    public TicTacToeBoard updateGameByGameId() {
        return null;
    }

    @Override
    public void reset() {

    }
}
