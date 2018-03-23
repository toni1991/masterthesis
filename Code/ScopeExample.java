package de.masterthesis;

public class ScopeExample {

    int memberAndLocalVariable;

    void memberFunction(int parameter) {
        // innerMemberVariable = 0; -> Ungültig
        int memberAndLocalVariable = 0;
        {
            // int memberAndLocalVariable = 1; -> Ungültig
            int localVariable;
        }
        int localVariable;
        this.memberAndLocalVariable = 0;
    }

    void otherMemberFunction() {
        // parameter = 0; -> Ungültig
        this.memberAndLocalVariable = 0;
    }

    class InnerClass {
        int innerMemberVariable;

        void innerMemberFunction(int innerParameter) {
            ScopeExample.this.memberAndLocalVariable = 0;
            innerParameter = 0;
        }
    }
}