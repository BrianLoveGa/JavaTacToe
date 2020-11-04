package com.TalentPath.BWL.TicTac.controllers;


import com.TalentPath.BWL.TicTac.models.TicTacToeBoard;
import com.TalentPath.BWL.TicTac.services.TicTacToeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api")
public class TicTacToeController {

    @Autowired
    TicTacToeService service;

    @GetMapping("/newgame")
    public Integer getNewGame(){
        return service.startNewGame();
    }
}
