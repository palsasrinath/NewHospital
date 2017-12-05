package com.mankraft.hospital.form;

import java.io.Serializable;

public class JsonResponse implements Serializable{
	private String status = null;
	private Object result = null;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	
}
