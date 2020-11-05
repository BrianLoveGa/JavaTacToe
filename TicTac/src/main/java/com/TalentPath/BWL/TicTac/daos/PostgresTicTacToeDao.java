package com.TalentPath.BWL.TicTac.daos;


import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
@Profile({"daotesting", "production"})
public class PostgresTicTacToeDao implements TicTacToeDao {

    @Autowired
    private JdbcTemplate template;


    @Override
    public TicTacToeBoard addGame() {
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
        template.update("TRUNCATE \"TicTacToeGameHistory\", \"TicTacToeBoard\" RESTART IDENTITY ");

    }
}
