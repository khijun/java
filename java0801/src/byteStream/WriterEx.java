package byteStream;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.List;

public class WriterEx {
	public static void main(String[] args) throws IOException{
		OutputStream os = new FileOutputStream("c:/Temp/test1.db");

		byte[] array = {10, 20, 30,40,50};
		
//		byte a = 10;
//		byte b = 20;
//		byte c = 30;
//		
//		os.write(a);
//		os.write(b);
//		os.write(c);
		
		os.write(array, 1, 3);
		os.flush();
		os.close();
	}
}
