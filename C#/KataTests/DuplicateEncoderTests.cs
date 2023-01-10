using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KataTests;

[TestFixture]
public class Tests
{
    [Test]
    public void ExamplesTests()
    {
        Assert.AreEqual("############5616", CardMask.Maskify("4556364607935616"));
        Assert.AreEqual("1", CardMask.Maskify("1"));
        Assert.AreEqual("#1111", CardMask.Maskify("11111"));
    }
}
