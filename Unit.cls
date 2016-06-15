public class Unit {
	public String  Name {get;set;}
    public Integer HP {get;set;}
    public Integer DmgMin {get;set;}
    public Integer DmgMax {get;set;}   
    
    public Unit(){}
    public Unit(String name,Integer hp,Integer dmgmin,Integer dmgmax)
    {
    	this.Name = name;
    	this.HP = hp;
    	this.DmgMin = dmgmin;
    	this.DmgMax = dmgmax;
    }
}