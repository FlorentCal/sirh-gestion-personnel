package dev.sgp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import dev.sgp.entite.VisiteWeb;
import dev.sgp.service.FrequentationService;
import dev.sgp.util.Constantes;

@WebFilter("/*")
public class FrequentationFilter implements Filter {
	
	private FrequentationService frequentationService = Constantes.FREQUENTATION_SERVICE;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		long start = System.currentTimeMillis();
		
		
		String url = ((HttpServletRequest) request).getRequestURI();
		
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		
		if(url.contains("bootstrap") || url.contains("/css/") || url.contains("/js/") || url.contains("/assets/")){
			return;
		}
		
		Constantes.FREQUENTATION_SERVICE.sauvegarderFrequentation(new VisiteWeb(frequentationService.getId(), url, (end - start)));
		
	}

	@Override
	public void destroy() {
		
	}

}
