package com.TalentPath.BWL.TicTac.controllers;


import com.TalentPath.BWL.TicTac.services.TicTacToeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api")
public class TicTacToeController {

    @Autowired
    TicTacToeService service;

    @GetMapping("/begin")
    public Integer startNewGame(){
        // return 10;
        return service.startNewGame();
    }


    @GetMapping("/gamestate/{gameId}")
    public String gamestate(@PathVariable Integer gameId){
        return service.getGameById(gameId).toString();
    }


    @PutMapping("/move/{gameId}")
    public String addMove(@PathVariable Integer gameId){
        return service.updateGameById(gameId).toString();
    }

}
