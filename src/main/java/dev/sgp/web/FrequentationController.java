package dev.sgp.web;

import java.io.IOException;
import java.util.LongSummaryStatistics;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.VisiteWeb;
import dev.sgp.service.FrequentationService;
import dev.sgp.util.Constantes;

@WebServlet("/statistiques")
public class FrequentationController extends HttpServlet {

	private FrequentationService frequentationService = Constantes.FREQUENTATION_SERVICE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Map<String, LongSummaryStatistics> frequentations = frequentationService.listerFrequantations()
				.stream()
				.collect(Collectors
						.groupingBy(VisiteWeb::getUrl, Collectors
								.summarizingLong(VisiteWeb::getTempsExec)));
		
		req.setAttribute("frequentations", frequentations);
		req.getRequestDispatcher("/WEB-INF/views/Afficher_Statistiques.jsp").forward(req, resp);

	}
}
