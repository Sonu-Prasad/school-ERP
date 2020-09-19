package dao;

import java.util.List;

import beans.sectionbean;

public interface SectionDAO
{
	public int saveOrUpdate(sectionbean sec);
    
    public void delete(int contactId);
     
    public sectionbean get(int sec);
     
    public List<sectionbean> list();
}
