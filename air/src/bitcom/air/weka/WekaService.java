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
          Instances train = new Instances(new BufferedReader(new FileReader("c:/data/research.arff")));
          int lastIndex = train.numAttributes() - 1;
          
          train.setClassIndex(lastIndex);
          
          Instances test = new Instances(new BufferedReader(new FileReader("c:/data/newperson.arff")));
          test.setClassIndex(lastIndex);
          
          j48tree.buildClassifier(train);
          String temp = "";
          for(int i=0; i<test.numInstances(); i++) {
          
                  double index = j48tree.classifyInstance(test.instance(i));
                  String className = train.attribute(lastIndex).value((int)index);
                  temp = className;
          }
		return temp;
   }
}
