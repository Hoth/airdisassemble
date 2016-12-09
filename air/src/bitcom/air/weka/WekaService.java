package bitcom.air.weka;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.ObjectOutputStream;

import weka.classifiers.Classifier;
import weka.classifiers.trees.J48;
import weka.core.Instances;

public class WekaService {
	public String wekaRun()throws Exception{
		  Classifier j48tree = new J48();
          Instances train = new Instances(new BufferedReader(new FileReader("C:/data/data3.arff")));
          int lastIndex = train.numAttributes() - 1;
          
          train.setClassIndex(lastIndex);
          
          Instances test = new Instances(new BufferedReader(new FileReader("C:/data/newperson.arff")));
          test.setClassIndex(lastIndex);
          
          j48tree.buildClassifier(train);
          String temp = "";
          for(int i=0; i<test.numInstances(); i++) {
          
                  double index = j48tree.classifyInstance(test.instance(i));
                  String answer = train.attribute(lastIndex).value((int)index);
                  temp = answer;
          }
		return temp;
   }
	public String wekaRun2()throws Exception{
		  Classifier j48tree = new J48();
        Instances train = new Instances(new BufferedReader(new FileReader("C:/data/data3.arff")));
        int lastIndex = train.numAttributes() - 1;
        
        train.setClassIndex(lastIndex);
        
        Instances test = new Instances(new BufferedReader(new FileReader("C:/data/newperson.arff")));
        test.setClassIndex(lastIndex);
        
        j48tree.buildClassifier(train);
        String temp = "";
        for(int i=0; i<test.numInstances(); i++) {
        
                double index = j48tree.classifyInstance(test.instance(i));
                String answer = train.attribute(lastIndex).value((int)index);
                temp = answer;
        }
		return temp;
 }
}
