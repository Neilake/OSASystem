
package com.stx.spring.service;


import java.util.List;

import com.stx.spring.entity.OSApplication;
import com.stx.spring.entity.TUser;


public interface OSApplicationService {
	public boolean addOSApplication(OSApplication  oSApplication);
	public String applicationTime();
	public List<OSApplication> queryOSApplication();
	public List<OSApplication> waitForDealOpnion();
	public boolean updateOSApplication(OSApplication oSApplication,TUser user);
}
