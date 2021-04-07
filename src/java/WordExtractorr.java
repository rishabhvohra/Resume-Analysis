
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author stigmata
 */
public class WordExtractorr {

    public static void main(String[] args) {
        //Creating wordCountMap which holds words as keys and their occurrences as values

        HashMap<String, Integer> wordCountMap = new HashMap<String, Integer>();

        BufferedReader reader = null;

        try {
            //Creating BufferedReader object

            reader = new BufferedReader(new FileReader("D:\\jobs\\ori\\arun.txt"));

            //Reading the first line into currentLineg
            String currentLine = reader.readLine();

            while (currentLine != null) {
                //splitting the currentLine into words

                String[] words = currentLine.toLowerCase().split(" ");

                //Iterating each word
                for (String word : words) {
                    //if word is already present in wordCountMap, updating its count

                    if (wordCountMap.containsKey(word)) {
                        wordCountMap.put(word, wordCountMap.get(word) + 1);
                    } //otherwise inserting the word as key and 1 as its value
                    else {
                        wordCountMap.put(word, 1);
                    }
                }

                //Reading next line into currentLine
                currentLine = reader.readLine();
            }

            //Getting all the entries of wordCountMap in the form of Set
            Set<Entry<String, Integer>> entrySet = wordCountMap.entrySet();

            //Creating a List by passing the entrySet
            List<Entry<String, Integer>> list = new ArrayList<Entry<String, Integer>>(entrySet);

            //Sorting the list in the decreasing order of values 
            Collections.sort(list, new Comparator<Entry<String, Integer>>() {
                @Override
                public int compare(Entry<String, Integer> e1, Entry<String, Integer> e2) {
                    return (e2.getValue().compareTo(e1.getValue()));
                }
            });

            //Printing the repeated words in input file along with their occurrences
            System.out.println("Repeated Words In Input File Are :");

            for (Entry<String, Integer> entry : list) {
                if (entry.getValue() > 1) {
                    System.out.println(entry.getKey() + " : " + entry.getValue());
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                reader.close();           //Closing the reader
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
