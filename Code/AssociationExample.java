public class AssociationExample {

    class MarriageParticipant { // 1-to-1 association
        MarriageParticipant partner;
    }

    class Library {  // 1-to-many association
        List<Book> books;
    }
    class Book {
        Library library;
    }

    class Student {  // many-to-many association
        List<Course> courses;
    }
    class Course {
        List<Student> students;
    }
}