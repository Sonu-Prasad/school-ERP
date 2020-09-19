package dao;

import java.util.List;

import beans.Classbean;
import beans.FeeHeadBean;

public interface FeeHeadDAO
{
   public int saveOrUpdate(FeeHeadBean feeHeadBean);
    
    public void delete(int feeId);
     
    public FeeHeadBean get(int feeId);
     
    public List<FeeHeadBean> list();
}
