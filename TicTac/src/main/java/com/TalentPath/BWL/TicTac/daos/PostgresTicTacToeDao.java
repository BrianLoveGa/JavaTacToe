package com.TalentPath.BWL.TicTac.daos;


import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Component
@Profile({"daotesting", "production"})
public class PostgresTicTacToeDao implements TicTacToeDao {

    @Autowired
    private JdbcTemplate template;


    @Override
    public TicTacToeBoard addGame(TicTacToeBoard toAdd) {
        List<Integer> insertedIds = template.query(
                "INSERT INTO \"TicTacToeBoard\" (\"gameState\") VALUES (' " +toAdd.getGameState()+" ') returning \"gameId\";", new IdMapper() );

        toAdd.setGameId( insertedIds.get(0));

        return toAdd;
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



    class IdMapper implements RowMapper<Integer> {

        @Override
        public Integer mapRow(ResultSet resultSet, int i) throws SQLException {
            return resultSet.getInt("gameId");
        }
    }
}
