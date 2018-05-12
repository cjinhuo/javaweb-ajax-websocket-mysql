package com.rigc.cjh.webscoket;

import java.io.IOException;
import java.util.concurrent.CopyOnWriteArraySet;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import com.mysql.fabric.xmlrpc.base.Data;



@ServerEndpoint("/websocket/{username}")  
public class WebSocket {
	private static int onlineCount = 0;  
	private String username;
    //concurrent包的线程安全Set，用来存放每个客户端对应的MyWebSocket对象。若要实现服务端与单一客户端通信的话，可以使用Map来存放，其中Key可以为用户标识  
    private static CopyOnWriteArraySet<WebSocket> webSocketSet = new CopyOnWriteArraySet<WebSocket>();  
    
    //与某个客户端的连接会话，需要通过它来给客户端发送数据  
    private Session session;  
    
    /** 
     * 连接建立成功调用的方法 
     * @param session  可选的参数。session为与某个客户端的连接会话，需要通过它来给客户端发送数据 
     * @throws IOException 
     */  
    @OnOpen  
    public void onOpen(@PathParam("username") String username,Session session) throws IOException{
    	this.username = username;
        this.session = session;  
        webSocketSet.add(this);     //加入set中  
        addOnlineCount();           //在线数加1  
        System.out.println(username + "加入连接！当前在线人数为" + getOnlineCount());
        String data = username + "加入连接！当前在线人数为" + getOnlineCount();
        String people = "";
        for(WebSocket item: webSocketSet){  
            people += item.getUsername();
        }
        sendAllClientsMessage(people); 
    }
  
    /** 
     * 连接关闭调用的方法 
     */  
    @OnClose  
    public void onClose(){  
        webSocketSet.remove(this);  //从set中删除  
        subOnlineCount();           //在线数减1  
        System.out.println("连接关闭！当前在线人数为" + getOnlineCount());  
    }  
  
    /** 
     * 收到客户端消息后调用的方法 
     * @param message 客户端发送过来的消息 
     * @param session 可选的参数 
     */  
    @OnMessage  
    public void onMessage(String message, Session session) {  
        System.out.println("来自客户端的消息:" + message);
        
        String data = this.username + ":" + message;
        sendAllClientsMessage(data);
        //群发消息  
  
    }  
    
    public String getUsername() {
		return this.username;
	}
    
    private void sendAllClientsMessage(String data) {
        for(WebSocket item: webSocketSet){  
            try {
            	
                item.sendMessage(data);  
            } catch (IOException e) {  
                e.printStackTrace();  
                continue;  
            }  
        }
	}
  
    /** 
     * 发生错误时调用 
     * @param session 
     * @param error 
     */  
    @OnError  
    public void onError(Session session, Throwable error){  
        System.out.println("发生错误");  
        error.printStackTrace();  
    }  
  
    /** 
     * 这个方法与上面几个方法不一样。没有用注解，是根据自己需要添加的方法。 
     * @param message 
     * @throws IOException 
     */  
    public void sendMessage(String message) throws IOException{  
        this.session.getBasicRemote().sendText(message);  
        //this.session.getAsyncRemote().sendText(message);  
    }  
  
    public static synchronized int getOnlineCount() {  
        return onlineCount;  
    }  
  
    public static synchronized void addOnlineCount() {  
    	WebSocket.onlineCount++;  
    }  
  
    public static synchronized void subOnlineCount() {  
    	WebSocket.onlineCount--;  
    }  

}
