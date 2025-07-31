package sub3;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class MyContextListener implements ServletContextListener{
	public MyContextListener() { 
		System.out.println("MyContextListener 생성 ...");
	}
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
	
		ServletContextListener.super.contextInitialized(sce);
		System.out.println("MyContextListener contextInitialized...");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		ServletContextListener.super.contextDestroyed(sce);
		System.out.println("MyContextListener contextDestroyed...");
	}
	
}
