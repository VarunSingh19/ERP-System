package com.example.model;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Sales {
	private int salesId;
	private String salespersonName;
	private int target;
	private int numberOfUnits;
	private int numberOfUnitsSold;
	private String completionStatus;
	private int sid;
	private String spname;
	private int trgt;
	private int nounits;
	private int nousold;
	private String cstatus;
	private int nextSalesId;

	public int getSalesId() {
		return salesId;
	}

	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}

	public String getSalespersonName() {
		return salespersonName;
	}

	public void setSalespersonName(String salespersonName) {
		this.salespersonName = salespersonName;
	}

	public int getTarget() {
		return target;
	}

	public void setTarget(int target) {
		this.target = target;
	}

	public int getNumberOfUnits() {
		return numberOfUnits;
	}

	public void setNumberOfUnits(int numberOfUnits) {
		this.numberOfUnits = numberOfUnits;
	}

	public int getNumberOfUnitsSold() {
		return numberOfUnitsSold;
	}

	public void setNumberOfUnitsSold(int numberOfUnitsSold) {
		this.numberOfUnitsSold = numberOfUnitsSold;
	}

	public String getCompletionStatus() {
		return completionStatus;
	}

	public void setCompletionStatus(String completionStatus) {
		this.completionStatus = completionStatus;
	}

	public Sales(int salesId, String salespersonName, int target, int numberOfUnits, int numberOfUnitsSold,
			String completionStatus) {
		super();
		this.salesId = salesId;
		this.salespersonName = salespersonName;
		this.target = target;
		this.numberOfUnits = numberOfUnits;
		this.numberOfUnitsSold = numberOfUnitsSold;
		this.completionStatus = completionStatus;
	}

	public Sales() {
		// TODO Auto-generated constructor stub
	}
}