#include <QString>
#include <QtTest>

class TestlibTest : public QObject
{
    Q_OBJECT

public:
    TestlibTest();

private Q_SLOTS:
    void testCase1();
};

TestlibTest::TestlibTest()
{
}

void TestlibTest::testCase1()
{
    QVERIFY2(true, "Failure");
}

QTEST_APPLESS_MAIN(TestlibTest)

#include "tst_testlibtest.moc"
