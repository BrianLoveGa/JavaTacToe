package com.TalentPath.BWL.TicTac.services;

import java.util.Random;

public class RandNumGen {
    static Random generator = new Random();

    public static int nextInt( int exclusiveMax ){
        return generator.nextInt( exclusiveMax );
    }

}
