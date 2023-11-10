package week11;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
//@WebServlet("/ControllerServlet")
@WebServlet(urlPatterns="*.do", initParams= {@WebInitParam(name="config", value="/WEB-INF/commandHandler.properties")})
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// <커맨드, 핸들러인스턴스> 매핑 정보 저장
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	// 서블릿을 생성하고 초기화할때 제일 먼저 호출되는 init() ㅔㅁ소드를 이용
	public void init(ServletConfig config) throws ServletException {
		String configFile = config.getInitParameter("config");
		Properties prop = new Properties();
		String configFilePath = config.getServletContext().getRealPath(configFile);
		
		try(FileInputStream fis = new FileInputStream(configFilePath)) {
			prop.load(fis);
		} catch(IOException e) {
			throw new ServletException(e);
		}
		
		Iterator<Object> keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String)keyIter.next();
			String handlerClassName = prop.getProperty(command);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);
			}catch(ClassNotFoundException |
				   InstantiationException |
				   IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
		
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//processRequest(request, response);
		try { 
			process(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//processRequest(request, response);
		try {
			process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		//String command = request.getParameter("command");
		String command = request.getRequestURI();
		command = command.substring(request.getContextPath().length() + 1);
		// command = command.split("/")[1];
		
		command = command.split("/")[1];
		CommandHandler handler = commandHandlerMap.get(command);
		
		String viewPage = null;
		try {
			viewPage = handler.process(request, response).split("/")[1];
		}catch(Exception e) {
			throw new ServletException(e);
		}
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
		
		
//		Object result = null;
//		
//		if(command.equals("greeting")) {
//			result = "안녕하세요";
//		} else if(command.equals("date")) {
//			result = new Date();
//		} else {
//			result = "Invalid type";
//		}
//		
//		request.setAttribute("result", result);
//		
//		RequestDispatcher rd = request.getRequestDispatcher("week11/simpleView.jsp");
//		rd.forward(request, response);
	}

}
