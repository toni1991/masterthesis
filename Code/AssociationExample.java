public class AssociationExample {

    // 1-to-1 association
    class MarriageParticipant {
        MarriageParticipant partner;
    }

    // 1-to-many association
    class Library {
        List<Book> books;
    }

    class Book {
        Library library;
    }

    // many-to-many association
    class Student {
        List<Course> courses;
    }

    class Course {
        List<Student> students;
    }
}