package com.hybrid.exception;

public class StoreLoginFailException extends RuntimeException {

	public StoreLoginFailException() {
		super();
	}
	
	public StoreLoginFailException(String msg) {
		super(msg);
	}
}
