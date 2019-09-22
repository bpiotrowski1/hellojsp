package pl.piotrowskib;

public class Person {
    private String imie;
    private String nazwisko;
    private String email;
    private String numer;

    public Person(String imie, String nazwisko, String email, String numer) {
        this.imie = imie;
        this.nazwisko = nazwisko;
        this.email = email;
        this.numer = numer;
    }

    public static class PersonBuilder {
        private String imie;
        private String nazwisko;
        private String email;
        private String numer;

        public PersonBuilder setImie(String imie) {
            this.imie = imie;
            return this;
        }

        public PersonBuilder setNazwisko(String nazwisko) {
            this.nazwisko=nazwisko;
            return this;
        }

        public PersonBuilder setEmail(String email) {
            this.email=email;
            return this;
        }

        public PersonBuilder setNumber(String numer) {
            this.numer=numer;
            return this;
        }

        public Person build() {
            return new Person(imie, nazwisko, email, numer);
        }
    }
}
