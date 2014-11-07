import java.io.IOException;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;


public class WordCountReducer extends Reducer<Text, IntWritable, Text, Text> {

	protected void reduce(Text arg0, Iterable<IntWritable> arg1,
			Context arg2)
			throws IOException, InterruptedException {
		int i = 0;
		
		for(IntWritable james : arg1)
			i++;
			
		arg2.write(arg0,new Text(i+""));
		
	}

	
	
}
