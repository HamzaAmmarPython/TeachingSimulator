class Classroom {
    int numberOfStudents;
    float[] gradeAverages;

    // Constructor
    Classroom(int numberOfStudents) {
        this.numberOfStudents = numberOfStudents;
        gradeAverages = new float[numberOfStudents];
    }

    // Set grade average
    void setGradeAverage(int studentIndex, float gradeAverage) {
        if (studentIndex >= 0 && studentIndex < numberOfStudents) {
            gradeAverages[studentIndex] = gradeAverage;
        } else {
            println("Invalid student index");
        }
    }

    // Get grade average
    
    float getGradeAverage(int studentIndex) {
        if (studentIndex >= 0 && studentIndex < numberOfStudents) {
            return gradeAverages[studentIndex];
        } else {
            println("Invalid student index!");
            return 0; // Return 0 if index invalid
        }
    }
}
