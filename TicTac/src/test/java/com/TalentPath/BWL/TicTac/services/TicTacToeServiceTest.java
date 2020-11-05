package com.TalentPath.BWL.TicTac.services;


import com.TalentPath.BWL.TicTac.daos.TicTacToeDao;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@ActiveProfiles("servicetesting")
public class TicTacToeServiceTest {
    TicTacToeService serviceToTest;

    @Autowired
    TicTacToeDao dao;


    @BeforeEach
    void setUp(){
        serviceToTest = new TicTacToeService(dao);
        dao.reset();
    }
}
