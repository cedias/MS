import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.storage.StorageLevel;




public class WordCount {

	
	public static void main(String[] args){
		SparkConf sparkConf = new SparkConf().setAppName("YourSister") ;
		JavaSparkContext sc = new JavaSparkContext(sparkConf);
		JavaRDD<String> distFile = sc.textFile(args[0]);
		distFile.persist(new StorageLevel());
		distFile.take(10);
	}
}
