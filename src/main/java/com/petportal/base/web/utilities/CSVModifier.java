package com.petportal.base.web.utilities;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVPrinter;
import org.apache.commons.csv.CSVRecord;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;

public class CSVModifier {

    public static void modifyFile(String filePath, String ratingTable, List<String> requiredColumns, Supplier<String> cellDataSupplier) throws Exception {
        if (filePath == null || filePath.isEmpty()) {
            throw new IllegalArgumentException("File path is required.");
        }

        List<Map<String, String>> modifiedRecords = new ArrayList<>();
        List<String> headers;

        // Reading the CSV file
        try (FileReader reader = new FileReader(filePath);
             CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT.withFirstRecordAsHeader())) {

            headers = new ArrayList<>(csvParser.getHeaderMap().keySet());

            if (!csvParser.iterator().hasNext()) {
                throw new IllegalStateException("The worksheet is empty.");
            }

            List<String> missingColumns = checkMissingKeys(requiredColumns, headers);
            if (!missingColumns.isEmpty()) {
                throw new IllegalStateException("Missing columns: " + String.join(", ", missingColumns));
            }

            for (CSVRecord record : csvParser) {
                Map<String, String> recordMap = new LinkedHashMap<>(record.toMap());
                for (String column : requiredColumns) {
                    recordMap.put(column, cellDataSupplier.get());
                }
                modifiedRecords.add(recordMap);
            }
        } catch (IOException e) {
            throw new IOException("Failed to read the CSV file.", e);
        }

        // Writing the modified data back to the CSV file
        try (FileWriter writer = new FileWriter(filePath);
             CSVPrinter csvPrinter = new CSVPrinter(writer, CSVFormat.DEFAULT.withHeader(headers.toArray(new String[0])))) {

            for (Map<String, String> recordMap : modifiedRecords) {
                csvPrinter.printRecord(recordMap.values());
            }
        } catch (IOException e) {
            throw new IOException("Failed to write to the CSV file.", e);
        }

        System.out.println("Modification completed successfully.");
    }

    private static List<String> checkMissingKeys(List<String> requiredColumns, List<String> availableColumns) {
        List<String> missingColumns = new ArrayList<>();
        for (String requiredColumn : requiredColumns) {
            if (!availableColumns.contains(requiredColumn)) {
                missingColumns.add(requiredColumn);
            }
        }
        return missingColumns;
    }

    // New method to print CSV content to the terminal
    public static void printCSV(String filePath) throws IOException {
        if (filePath == null || filePath.isEmpty()) {
            throw new IllegalArgumentException("File path is required.");
        }

        try (FileReader reader = new FileReader(filePath);
             CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT.withFirstRecordAsHeader())) {

            List<String> headers = new ArrayList<>(csvParser.getHeaderMap().keySet());
            System.out.println(String.join(", ", headers));

            for (CSVRecord record : csvParser) {
                List<String> row = new ArrayList<>();
                for (String header : headers) {
                    row.add(record.get(header));
                }
                System.out.println(String.join(", ", row));
            }
        } catch (IOException e) {
            throw new IOException("Failed to read the CSV file.", e);
        }
    }

    public static void main(String[] args) {
        try {
            modifyFile("src/test/testData/ratingTable.csv", "ratingTable", List.of("GroupName"), () -> "newGroupName1");
            printCSV("src/test/testData/ratingTable.csv");  // Print the modified CSV file to the terminal
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

