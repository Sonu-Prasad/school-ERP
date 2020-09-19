package beans;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class schoolbean
{
   private int schoolId;
   private String schoolName,address,principal,principal_email;
   private String principal_mobile,chairman,cur_addmision_year,web_url,fax_no,board,school_code;
   private String registd_year,financial_year,schoolcontact,email,class_allow;
   private CommonsMultipartFile file;
   
   public schoolbean()
   {
	   
   }

public int getSchoolId() {
	return schoolId;
}

public void setSchoolId(int schoolId) {
	this.schoolId = schoolId;
}

public String getSchoolName() {
	return schoolName;
}

public void setSchoolName(String schoolName) {
	this.schoolName = schoolName;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getPrincipal() {
	return principal;
}

public void setPrincipal(String principal) {
	this.principal = principal;
}

public String getPrincipal_email() {
	return principal_email;
}

public void setPrincipal_email(String principal_email) {
	this.principal_email = principal_email;
}

public String getPrincipal_mobile() {
	return principal_mobile;
}

public void setPrincipal_mobile(String principal_mobile) {
	this.principal_mobile = principal_mobile;
}

public String getChairman() {
	return chairman;
}

public void setChairman(String chairman) {
	this.chairman = chairman;
}

public String getCur_addmision_year() {
	return cur_addmision_year;
}

public void setCur_addmision_year(String cur_addmision_year) {
	this.cur_addmision_year = cur_addmision_year;
}

public String getWeb_url() {
	return web_url;
}

public void setWeb_url(String web_url) {
	this.web_url = web_url;
}

public String getFax_no() {
	return fax_no;
}

public void setFax_no(String fax_no) {
	this.fax_no = fax_no;
}

public String getBoard() {
	return board;
}

public void setBoard(String board) {
	this.board = board;
}

public String getSchool_code() {
	return school_code;
}

public void setSchool_code(String school_code) {
	this.school_code = school_code;
}

public String getRegistd_year() {
	return registd_year;
}

public void setRegistd_year(String registd_year) {
	this.registd_year = registd_year;
}

public String getFinancial_year() {
	return financial_year;
}

public void setFinancial_year(String financial_year) {
	this.financial_year = financial_year;
}

public String getSchoolcontact() {
	return schoolcontact;
}

public void setSchoolcontact(String schoolcontact) {
	this.schoolcontact = schoolcontact;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getClass_allow() {
	return class_allow;
}

public void setClass_allow(String class_allow) {
	this.class_allow = class_allow;
}

public CommonsMultipartFile getFile() {
	return file;
}

public void setFile(CommonsMultipartFile file) {
	this.file = file;
}
   
}
