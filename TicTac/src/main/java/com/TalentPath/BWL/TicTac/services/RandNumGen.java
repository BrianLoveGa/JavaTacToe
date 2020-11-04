package com.TalentPath.BWL.TicTac.services;

import java.util.Random;

/// will use this for computer guess - random numb 1-9
// unless already occupied on board
// then go up one?
/// unless at the end then loop through ... 8,9 - > 1,2,3 ...

public class RandNumGen {
    static Random generator = new Random();

    public static int nextInt( int exclusiveMax ){
        return generator.nextInt( exclusiveMax );
    }

}
