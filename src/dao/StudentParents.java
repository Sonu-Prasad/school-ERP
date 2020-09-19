package dao;

import java.util.List;

import beans.parentsbean;
import beans.sectionbean;

public interface StudentParents
{
   public int saveOrUpdate(parentsbean pobjs);
    
    public void delete(int contactId);
     
    public List<parentsbean> getbysid(int pid);
     
    public List<parentsbean> list();
}
