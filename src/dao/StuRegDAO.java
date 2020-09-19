package dao;

import java.util.List;

import beans.StudentRegbean;
import beans.addressbean;
import beans.parentsbean;


public interface StuRegDAO 
{
  public int saveOrUpdate(StudentRegbean stu,parentsbean pobjs,addressbean address);
    
    public void delete(int stuId);
     
    public List<StudentRegbean> get(int stuId);
     
    public List<StudentRegbean> list();

}
