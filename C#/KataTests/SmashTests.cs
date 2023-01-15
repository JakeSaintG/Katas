using NUnit.Framework;
using System;
using System.Linq;

namespace KataTests;

internal class SmashTests
{
    [Test]
    public void SampleTest()
    {
        Assert.AreEqual("hello", Smash.SmashSentance(new string[] { "hello" }));
        Assert.AreEqual("hello world", Smash.SmashSentance(new string[] { "hello", "world" }));
        Assert.AreEqual("hello amazing world", Smash.SmashSentance(new string[] { "hello", "amazing", "world" }));
        Assert.AreEqual("this is a really long sentence", Smash.SmashSentance(new string[] { "this", "is", "a", "really", "long", "sentence" }));
        Assert.AreEqual("", Smash.SmashSentance(new string[] { "" }));
    }
}
