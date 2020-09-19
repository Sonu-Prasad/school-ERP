/**
 * 
 */
package dao;

import java.util.List;

import beans.FeeStructureBean;


/**
 * @author sonu
 *
 */
public interface FeeStructureDAO 
{
   public int saveOrUpdate(FeeStructureBean feeStructure);
    
    public void delete(int stuId);
     
    public List<FeeStructureBean> get(int stuId);
     
    public List<FeeStructureBean> list();
}
