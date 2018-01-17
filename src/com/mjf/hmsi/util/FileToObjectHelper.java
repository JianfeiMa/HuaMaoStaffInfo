package com.mjf.hmsi.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.mjf.hmsi.bean.Staff;

public class FileToObjectHelper {

	public List<Staff> serializableToObj() throws FileNotFoundException {
		List<Staff> listStaff = new ArrayList<Staff>();
		File file = new File("C:/b.txt");
		BufferedReader br = new BufferedReader(new FileReader(file));
		String s = null;
		try {
			while ((s = br.readLine()) != null) {
				Staff staff = new Staff();
				String lineSplit[] = s.split(",");
				for(int i = 0; i < lineSplit.length; i++) {
					switch (i) {
					case 0:
						staff.setName(lineSplit[i]);
						break;
					case 1:
						staff.setDepartment(lineSplit[i]);
						break;
					case 2:
						staff.setTwoFourNineN(lineSplit[i]);
						break;
					case 3:
						staff.setTwoFourNineP(lineSplit[i]);
						break;
					case 4:
						staff.setIp(lineSplit[i]);
						break;
					case 5:
						staff.setInMail(lineSplit[i]);
						break;
					case 6:
						staff.setOutMail(lineSplit[i]);
						break;
					case 7:
						staff.setMailPassword(lineSplit[i]);
						break;
					case 8:
						staff.setStartUpPassword(lineSplit[i]);
						break;
					case 9:
						staff.setLockPassword(lineSplit[i]);
						break;
					case 10:
						staff.setWhetherYK(Boolean.valueOf(lineSplit[i]));
						break;
					case 11:
						staff.setDomainName(lineSplit[i]);
						break;
					}
					Date date = new Date();
					String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
					Timestamp createUserT = Timestamp.valueOf(nowTime);
					staff.setCreateUserT(createUserT);
					staff.setRecentlyAlterT(createUserT);
				}
				listStaff.add(staff);
				System.out.println("对象序列化:"+staff.toString());
			}
			br.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return listStaff;
	}
}
