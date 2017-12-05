package net.codejava.spring;

public class MyServices {
	private MyBusiness businessBean;
	private ProductServices productServiceBean;
	
	public void setProductServiceBean(ProductServices productServiceBean) {
		this.productServiceBean = productServiceBean;
	}

	public void setBusinessBean(MyBusiness businessBean) {
		this.businessBean = businessBean;
	}
	
	public void doService() {
		System.out.println("doService");
		productServiceBean.doProductService();
		businessBean.doBusiness();
	}
}