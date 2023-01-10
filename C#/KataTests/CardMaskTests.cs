namespace KataTests;

[TestFixture]
public class KataTests
{
    [Test]
    public void BasicTests()
    {
        Assert.AreEqual("(((", DuplicateEncoder.DuplicateEncode("din"));
        Assert.AreEqual("()()()", DuplicateEncoder.DuplicateEncode("recede"));
        Assert.AreEqual(")())())", DuplicateEncoder.DuplicateEncode("Success"), "should ignore case");
        Assert.AreEqual("))((", DuplicateEncoder.DuplicateEncode("(( @"));
    }
}
