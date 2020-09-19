package beans;

public class FeeStructureBean
{
  private int feeStructureId;
  private int feeStructureHeadId; 
  private int feeStructureClassId;
  private String className,headName;
  private double amount;
  private  String month;
  
  public FeeStructureBean()
  {
	  
  }

public int getFeeStructureId() {
	return feeStructureId;
}

public void setFeeStructureId(int feeStructureId) {
	this.feeStructureId = feeStructureId;
}

public int getFeeStructureHeadId() {
	return feeStructureHeadId;
}

public void setFeeStructureHeadId(int feeStructureHeadId) {
	this.feeStructureHeadId = feeStructureHeadId;
}

public int getFeeStructureClassId() {
	return feeStructureClassId;
}

public void setFeeStructureClassId(int feeStructureClassId) {
	this.feeStructureClassId = feeStructureClassId;
}

public double getAmount() {
	return amount;
}

public void setAmount(double amount) {
	this.amount = amount;
}

public String getMonth() {
	return month;
}

public void setMonth(String month) {
	this.month = month;
}

public String getClassName() {
	return className;
}

public void setClassName(String className) {
	this.className = className;
}

public String getHeadName() {
	return headName;
}

public void setHeadName(String headName) {
	this.headName = headName;
}
  
}
