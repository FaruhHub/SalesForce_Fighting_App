public class Game {
    Integer RandomInteger(Unit u) 
    {
        Integer num = Math.floor(Math.random() * (u.DmgMax - u.DmgMin + 1) + u.DmgMin).intValue();
        return num;
    }
    
    public void Fight(Unit fighter1, Unit fighter2)
    {
    	Integer fighter1_kick;
    	Integer fighter2_kick;
        Boolean isFinished = false;
    	do
    	{
            fighter1_kick = RandomInteger(fighter1);
            fighter2_kick = RandomInteger(fighter2);
			fighter1.HP -= fighter2_kick;
	    	system.debug(fighter2.Name + ' ударил силой ' + fighter2_kick);
	    	system.debug('Осталось жизни: ' + fighter1.name + ' - ' + fighter1.hp + ' | ' + fighter2.name + ' - ' + fighter2.hp);
	    	
            if(fighter1.HP <= 0){
		    	system.debug('Победитель ' + '\"' + fighter2.Name + '\"');
		    	isFinished = true;
		    	break;
	    	}
            
	    	fighter2.HP -= fighter1_kick;
	    	system.debug(fighter1.Name + ' ударил силой ' + fighter1_kick);	    		
	    	system.debug('Осталось жизни: ' + fighter1.Name + ' - ' + fighter1.HP + ' | ' + fighter2.Name + ' - ' + fighter2.HP);
	    	
	    	if(fighter2.HP <= 0){
		    	system.debug('Победитель ' + '\"' + fighter1.name + '\"');
		    	isFinished = true;
		    	break;
		    }else{continue;}
    	}
    	while(!isFinished);    	
    }
}