package beans;

public class StudentRegbean
{
	private String name;
	private String clas;
	private String gender;
	private String sdob;
	private String relogion;
	private String cast;
	private String email;
	private String area;
	private String city;
	private String pin;
	private String img;
	private String prevSchool;
	private String prevclas;
	private String registrationStatus;
    private addressbean address;
    private parentsbean parent;

	private int sid;
	
	public StudentRegbean()
	{
		
	}

	public addressbean getAddress() {
		return address;
	}

	public void setAddress(addressbean address) {
		this.address = address;
	}

	public int getSid() {
		return sid;
	}
   
	public parentsbean getParent() {
		return parent;
	}

	public void setParent(parentsbean parent) {
		this.parent = parent;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getSdob() {
		return sdob;
	}

	public void setSdob(String sdob) {
		this.sdob = sdob;
	}

	public String getRelogion() {
		return relogion;
	}

	public void setRelogion(String relogion) {
		this.relogion = relogion;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPrevSchool() {
		return prevSchool;
	}

	public void setPrevSchool(String prevSchool) {
		this.prevSchool = prevSchool;
	}

	public String getPrevclas() {
		return prevclas;
	}

	public void setPrevclas(String prevclas) {
		this.prevclas = prevclas;
	}
	public String getRegistrationStatus() {
		return registrationStatus;
	}

	public void setRegistrationStatus(String registrationStatus) {
		this.registrationStatus = registrationStatus;
	}

}
