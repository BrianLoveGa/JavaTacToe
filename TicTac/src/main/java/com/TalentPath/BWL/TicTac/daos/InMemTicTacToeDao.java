package com.TalentPath.BWL.TicTac.daos;


import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Component
@Profile({"servicetesting", "inmemtesting"})
public class InMemTicTacToeDao implements TicTacToeDao{
}
