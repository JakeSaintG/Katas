import "package:test/test.dart";
import "package:dart/katas/spin_words.dart";

void main() {
  group("Fixed tests", () {
    test("Testing for Welcome", () {
      expect(spin_words("Welcome"), equals("emocleW"));
    });
    test("Testing for Hey fellow warriors", () {
      expect(spin_words("Hey fellow warriors"), equals("Hey wollef sroirraw"));
    });
    test("Testing for This is a test", () {
      expect(spin_words("This is a test"), equals("This is a test"));
    });
    test("Testing for This is another test", () {
      expect(
          spin_words("This is another test"), equals("This is rehtona test"));
    });
    test("Testing for You are almost to the last test", () {
      expect(spin_words("You are almost to the last test"),
          equals("You are tsomla to the last test"));
    });
    test("Testing for Just kidding there is still one more", () {
      expect(spin_words("Just kidding there is still one more"),
          equals("Just gniddik ereht is llits one more"));
    });
    test("Testing for Seriously this is the last one", () {
      expect(spin_words("Seriously this is the last one"),
          equals("ylsuoireS this is the last one"));
    });
  });
}
