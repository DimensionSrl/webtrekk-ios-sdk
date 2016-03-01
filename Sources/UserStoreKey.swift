import Foundation

internal enum UserStoreKey: String {

	// MARK: Bools

	case OptedOut = "optedOut"


	// MARK: Strings

	case Eid = "eid"

}

extension NSUserDefaults {

	internal func boolForKey(defaultName: UserStoreKey) -> Bool {
		return self.boolForKey(defaultName.rawValue)
	}


	internal func stringForKey(defaultName: UserStoreKey) -> String? {
		return self.stringForKey(defaultName.rawValue)
	}
}