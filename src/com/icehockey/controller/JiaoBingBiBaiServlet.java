package com.icehockey.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icehockey.entity.Rink;
import com.icehockey.service.RinkService;


/**
 * Servlet implementation class JiaoBingBiBaiServlet
 */
public class JiaoBingBiBaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JiaoBingBiBaiServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setContentType("application/json");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter writer = response.getWriter();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("-----------------浇冰必拜页面后台程序----------");
		
		RinkService rinkservice = new RinkService();
		Rink rink = null;
		List<Rink> rinks = null;
		System.out.println("跳转后的sessionId :" + session.getId());
		String operateType = null;
		// session
		if (session.getAttribute("user") == null) {
			map.put("result", "-1");// 没有用户登录
		} else {
			if (request.getParameter("operateType") != null) {
				operateType = request.getParameter("operateType");
				if ("zhukongToJiaoZhu".equals(operateType)) {// 如果操作类型是主控页面到浇冰必拜主页面，则取出场地表中的所有场地信息
					rinks = rinkservice.getRinks();
					session.setAttribute("rinks", rinks);
					map.put("rinks", rinks);
					map.put("result", "0");
					map.put("ok", "1");

				} else if ("JiaoZhuToJiaoXiang".equals(operateType)) {// 如果操作类型是浇冰必拜主页面场地详细信息，则根据场地名称取出场地表中的该场地信息
					if (request.getParameter("rinkId") != null) {
						String rinkIdString = request.getParameter("rinkId");
						rink = rinkservice.getRinkByRinkId(Integer.parseInt(rinkIdString));
						session.setAttribute("rink", rink);
						map.put("rink", rinks);
						map.put("result", "0");
						map.put("ok", "2");
					} else {
						map.put("result", "-2");// 没有操作类型
					}
				} else if ("sousuo".equals(operateType)) {// 如果操作类型是浇冰必拜主页面场地详细信息，则根据场地名称取出场地表中的该场地信息
					if (request.getParameter("rinkName") != null) {
						String rinkName = request.getParameter("rinkName");
						System.out.println("rinkName:"+rinkName);
						rinks = rinkservice.getRinksByRinkName(rinkName);
						session.setAttribute("rinks", rinks);
						map.put("rinks", rinks);
						map.put("result", "0");
						map.put("ok", "3");
					} else {
						map.put("result", "-2");// 没有操作类型
					}
					System.out.println("map:" + map);
				}else if ("tianjiaRink".equals(operateType)) {// 如果操作类型是浇冰必拜主页面场地详细信息，则根据场地名称取出场地表中的该场地信息
					String rinkName= request.getParameter("rinkName");
					String address =request.getParameter("address");
					String telephone = request.getParameter("telephone");
					boolean indoor=Boolean.parseBoolean(request.getParameter("indoor")); 
					boolean  hasLocker = Boolean.parseBoolean(request.getParameter("hasLocker"));
					boolean hasCarparks = Boolean.parseBoolean(request.getParameter("hasCarparks"));
					String trainingDegree = request.getParameter("trainingDegree");
					int scale = Integer.parseInt(request.getParameter("scale"));
					boolean hasLandTrainingRoom = Boolean.parseBoolean(request.getParameter("hasLandTrainingRoom"));
					int area = Integer.parseInt(request.getParameter("area"));
					int iceArea = Integer.parseInt(request.getParameter("iceArea"));
					String completionDate = request.getParameter("completionDate");
					String beginUseDate = request.getParameter("beginUseDate");
					String openTime = request.getParameter("openTime");
					boolean allowedSlip=Boolean.parseBoolean(request.getParameter("allowedSlip"));
					String iceType = request.getParameter("iceType");
					
					boolean f=rinkservice.AddRink(rinkName,address,telephone,indoor,hasLocker,hasCarparks,trainingDegree,scale,hasLandTrainingRoom,area,iceArea,completionDate,beginUseDate,openTime,allowedSlip,iceType);
					if (f) {					
						rinks = rinkservice.getRinks();
						session.setAttribute("rinks", rinks);
						map.put("rinks", rinks);
						map.put("result", "0");
						map.put("ok", "4");
					} else {
						map.put("result", "-3");// 没有操作类型
					}
					System.out.println("map:" + map);
				}
			} else {
				map.put("result", "-2");// 没有操作类型
			}
		}
		System.out.println("aaaaaaaaaaa");
		// 根据result值，判断页面如何跳转
		if ("0".equals(map.get("result"))) {// 登录成功，且不是第一次登陆
			System.out.println("页面操作正确");
			if ("1".equals(map.get("ok"))) {
				writer.println("<script language='javascript'>window.location.href='./views/part2/jiaobingbibaizhuyemian.jsp'</script>");
			} else if ("2".equals(map.get("ok"))) {
				writer.println("<script language='javascript'>window.location.href='./views/part2/bingchangxiangxixinxi.jsp'</script>");
			} else if ("3".equals(map.get("ok"))) {
				writer.println("<script language='javascript'>window.location.href='./views/part2/jiaobingbibaizhuyemian.jsp'</script>");
			} else if ("4".equals(map.get("ok"))) {
				writer.println("<script language='javascript'>window.location.href='./views/part2/jiaobingbibaizhuyemian.jsp'</script>");
			}
		} else if ("-1".equals(map.get("result"))) {// 登陆失败，用户名不存在
			writer.println("<script language='javascript'>alert('当前没有登录用户');window.location.href='./views/part1/zhucedengluyemian.jsp'</script>");

		} else if ("-2".equals(map.get("result"))) {// 前端错误
			writer.println("<script language='javascript'>alert('前端错误');window.location.href='history.back(-1);'</script>");

		} else if ("-3".equals(map.get("result"))) {// 插入失败
			writer.println("<script language='javascript'>alert('插入失败');window.location.href='history.back(-1);'</script>");

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
