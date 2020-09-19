package dao;

import java.util.List;

import beans.Classbean;


public interface ClassDAO 
{
	public int saveOrUpdate(Classbean clas);
    
    public void delete(int contactId);
     
    public Classbean get(int sec);
     
    public List<Classbean> list();

}
