package com.jerp;

import java.net.URL;
import java.net.URLConnection;
import java.util.Date;

public class TimeUtil {
	public static Date getTimer() throws Exception{
		//取得资源对象
		URL url = new URL("http://www.bjtime.cn");
		//生成连接对象
		URLConnection uc = url.openConnection();
		//发出连接
		uc.connect();
		long time = uc.getDate();
		return new Date(time);
	}
}
