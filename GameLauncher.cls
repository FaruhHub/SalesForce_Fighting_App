public class GameLauncher {
    public static void Main()
    {
        Unit u1 = new Unit('Никулин', 100, 10, 25);        
        Unit u2 = new Unit('Вицин', 100, 10, 25);
        Game game = new Game();
        
        game.Fight(u1, u2);
    } 
}