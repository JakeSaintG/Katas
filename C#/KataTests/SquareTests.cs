﻿namespace KataTests;

internal class SquareTests
{
    private static IEnumerable<TestCaseData> sampleTestCases
    {
        get
        {
            yield return new TestCaseData(new int[] { 1, 2, 2 }).Returns(9);
            yield return new TestCaseData(new int[] { 1, 2 }).Returns(5);
            yield return new TestCaseData(new int[] { 5, 3, 4 }).Returns(50);
            yield return new TestCaseData(new int[] { }).Returns(0);
        }
    }

    [Test, TestCaseSource("sampleTestCases"), Description("Sample Tests")]
    public int SampleTest(int[] n) => Square.SquareSum(n);
}
