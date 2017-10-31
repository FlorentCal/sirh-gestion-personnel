package dev.sgp.util;

public class PageBuilder {

	public static String buildPage(String... params){
		String page= "<h1>Edition de collaborateur</h1>"+ "<ul>";
		
		for (String param : params) {
			page += "<li>"+ param +"</li>";		
		}
		
		page += "</ul>";
		return page;
	}
}
