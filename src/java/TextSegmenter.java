import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.IOException;

public class TextSegmenter {

    private static final int MIN_LEX_LENGTH = 2;

    private TreeMap<String, Double> dictionary
            = new TreeMap<String, Double>();

    private List<String> concat = new ArrayList<String>();

    public TextSegmenter() {
    }

    public void split(File lexicon, File concat)
            throws IOException {
        BufferedReader lex = new BufferedReader(
                new InputStreamReader(new FileInputStream(lexicon)));
        BufferedReader col = new BufferedReader(
                new InputStreamReader(new FileInputStream(concat)));

        split(lex, col);

        lex.close();
        col.close();
    }

    public void split(BufferedReader lexicon, BufferedReader concat)
            throws IOException {
        loadLexicon(lexicon);
        loadConcat(concat);
        split();
    }

    private void split() {
        for (String concat : getConcat()) {
            System.out.printf("%s::%s\n", concat, segments(concat));
        }
    }

    private double getProbability(String s) {
        try {
            return getDictionary().get(s);
        } catch (Exception e) {
            return 0.0;
        }
    }

    private String segments(String concat) {
        int length = concat.length();
        List<Map.Entry<String, Double>> words
                = new ArrayList<Map.Entry<String, Double>>();

        // Put all the words that exist in the string into a map.
        //
        for (int i = 0; i < length; i++) {
            for (int j = 0; j < length - i; j++) {
                // Word and probability.
                //
                String w = concat.substring(j, length - i);
                double p = getProbability(w);

                // Retain words that comprise the concatenated string in order.
                //
                if (p > 0) {
                    words.add(0, new AbstractMap.SimpleEntry<String, Double>(w, p));
                }
            }
        }

        StringBuilder result = new StringBuilder(length * 2);

        // Find the possibilities that account for the most words.
        //
        for (Map.Entry<String, Double> word : words) {
            result.append(word.getKey()).append(' ');

            System.out.printf("%s=%f\n", word.getKey(), word.getValue());
        }

        return result.toString();
    }

    private void loadLexicon(BufferedReader lexiconData)
            throws IOException {
        String line = null;
        TreeMap<String, Double> dictionary = getDictionary();

        dictionary.clear();

        while ((line = lexiconData.readLine()) != null) {
            String[] lex = line.toLowerCase().split(",");

            if (lex[0].length() >= MIN_LEX_LENGTH) {
                dictionary.put(lex[0], Double.parseDouble(lex[1]));
            }
        }
    }

    private void loadConcat(BufferedReader concatData)
            throws IOException {
        String line = null;
        List<String> concat = getConcat();

        concat.clear();

        while ((line = concatData.readLine()) != null) {
            if (line.length() >= MIN_LEX_LENGTH) {
                concat.add(line.toLowerCase());
            }
        }
    }

    private List<String> getConcat() {
        return this.concat;
    }

    private TreeMap<String, Double> getDictionary() {
        return this.dictionary;
    }

    public static void main(String args[])
            throws IOException {
        TextSegmenter ts = new TextSegmenter();

        if (args.length == 2) {
            try {
                ts.split(new File(args[0]), new File(args[1]));
            } catch (Exception e) {
                System.err.println("Error: " + e.getMessage());
                e.printStackTrace();
            }
        } else {
            System.out.println("TextSegmenter <lexicon> <concat>");
            System.out.println("<lexicon> - <word, relative probability>");
            System.out.println("<concat>  - <words>");
        }
    }
}
