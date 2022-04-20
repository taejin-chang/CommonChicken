package com.commonchicken.exception;

import java.util.Map;

public class SearchStoreFailException extends Exception {
	private static final long serialVersionUID = 1L;

	private Map<String, Object> map;

	public SearchStoreFailException(String message, Map<String, Object> map) {
		super(message);
		this.map = map;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

	
	
	
}
