import java.io.IOException;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;


public class HdfsManagement {

	
	public static void main(String[] argv){
		Configuration conf = new Configuration();
		try {
			FileSystem fs = FileSystem.get(conf);
			System.out.println(fs.listStatus(new Path(".")));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	
}
