package net.codejava.spring;

public class ProductServices {
	private MyBusiness businessBean;

	public void setBusinessBean(MyBusiness businessBean) {
		this.businessBean = businessBean;
	}

	public void doProductService() {
		System.out.println("doProductService");
		businessBean.doBusiness();
	}
}