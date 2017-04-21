library('Metrics')
library('RUnit')

test.suite <- defineTestSuite("Metrics",
                              dirs = file.path(path.package(package="Metrics"),
					       "tests"),
                              testFileRegexp = '^.+\\.r')

test.result <- runTestSuite(test.suite)

printTextProtocol(test.result)
