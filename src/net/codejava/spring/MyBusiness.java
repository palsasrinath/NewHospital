package net.codejava.spring;

public class MyBusiness {
	private MyDao daoBean;

	public void setDaoBean(MyDao daoBean) {
		this.daoBean = daoBean;
	}
	
	public void doBusiness() {
		System.out.println("doBusiness");
		daoBean.queryDatabase();
	}
}