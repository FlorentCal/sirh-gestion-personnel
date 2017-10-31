package dev.sgp.util;

public class ErrorBuilder {
	
	public static String buildError(String... params){
		String error = "";
				
		for (String param : params) {
			String[] paramsTab = param.split(":");
			if(paramsTab[1].trim().equals("null")){
				error += paramsTab[0].trim() + ". ";
			}
		}
		
		return error;
	}

}
