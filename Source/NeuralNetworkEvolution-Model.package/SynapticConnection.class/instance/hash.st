comparing
hash

	^ self from hash bitXor: (self to hash bitXor: self weight hash)