package servers;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;

public class TCPServer {
	public static void main(String[] args) throws IOException {
		ServerSocket ss = new ServerSocket(2008);
		System.out.println("Server is ready for clients");
		Socket c = ss.accept();
		
		DataInputStream din = new DataInputStream(c.getInputStream());
		PrintStream pw = new PrintStream(c.getOutputStream());
		
		System.out.println("Client:"+din.readLine());
		pw.println("Hello, welcome");
	}
}
