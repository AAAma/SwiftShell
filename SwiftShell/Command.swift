/*
* Released under the MIT License (MIT), http://opensource.org/licenses/MIT
*
* Copyright (c) 2015 Kåre Morstøl, NotTooBad Software (nottoobadsoftware.com)
*
*/

import Foundation

public func runLater (shellcommand: String) -> NSTask {
	let task = NSTask()
	task.arguments = ["-c", shellcommand]
	task.launchPath = "/bin/bash"

	return task
}

/** Print message to standard error and halt execution. */
@noreturn public func printErrorAndExit <T> (errormessage: T, errorcode: Int32 = EXIT_FAILURE) {
	main.stderror.writeln("SwiftShell: \(errormessage)")
	exit(errorcode)
}
}
