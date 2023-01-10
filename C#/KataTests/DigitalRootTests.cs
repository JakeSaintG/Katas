namespace KataTests;

[TestFixture]
public class NumberTest
{
    private DigitalRoot? num;

    [SetUp]
    public void SetUp()
    {
        num = new DigitalRoot();
    }

    [TearDown]
    public void TearDown()
    {
        num = null;
    }

    [Test]
    public void Tests()
    {
        Assert.AreEqual(7, num.ReturnDigitalRoot(16));
        Assert.AreEqual(6, num.ReturnDigitalRoot(456));
    }
}