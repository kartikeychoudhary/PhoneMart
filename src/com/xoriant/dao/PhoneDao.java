package com.xoriant.dao;

import java.util.List;

import com.xoriant.modals.Phone;

public interface PhoneDao {
	public Integer addPhone(Phone phone);
	public void updatePhone(Integer phoneId, Phone phone);
	public void deletePhone(Integer phoneId);
	public List<Phone> listPhones();
	public Phone getPhone(Integer phoneId);
	public List<Phone> listPhonesByBrand(String Brand);

}
