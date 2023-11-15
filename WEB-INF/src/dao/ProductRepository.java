package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅
   
    private static ProductRepository instance = new ProductRepository();
    public static ProductRepository getInstance(){
	return instance;
   }                                //7주차 상품등록하기
    
	public ProductRepository() {
		Product bicycle1 = new Product("P1234", "비앙키 자전거", 1500000); // 상품명을 bicycle1로 지정함
		bicycle1.setDescription("프레임: sprint disc carbon monocorque BB86"); //맨 앞은 모두 상품명으로 작성할것
		bicycle1.setCategory("Bicycle1");
		bicycle1.setManufacturer("Bianchi");
		bicycle1.setUnitsInStock(1000);
		bicycle1.setCondition("New");
        
        bicycle1.setFilename("P1234.jpg");


		Product bicycle2 = new Product("P1235", "트렉 자전거", 2000000);
		bicycle2.setDescription("프레임: mardon disc carbon norowa CW19");
		bicycle2.setCategory("Bicycle2");
		bicycle2.setManufacturer("TREK");
		bicycle2.setUnitsInStock(1000);
		bicycle2.setCondition("NEW");
        
        bicycle2.setFilename("P1235.jpg");

		Product bicycle3 = new Product("P1236", "BMC 자전거", 5000000);
		bicycle3.setDescription("프레임: timemachine road 01 premium carbon PF86");
		bicycle3.setCategory("Bicycle3");
		bicycle3.setManufacturer("BMC");
		bicycle3.setUnitsInStock(1000);
		bicycle3.setCondition("NEW");
        
        bicycle3.setFilename("P1236.jpg");

        
        
        
       
        Product bicycle4 = new Product("P1237", "GIANT 자전거", 1000000);
		bicycle4.setDescription("프레임: advanced SL-grade composite, integrated seatpost, disc");
		bicycle4.setCategory("Bicycle4");
		bicycle4.setManufacturer("Giant");
		bicycle4.setUnitsInStock(1000);
		bicycle4.setCondition("New");
        
        bicycle4.setFilename("P1237.jpg");


        Product bicycle5 = new Product("P1238", "캐논데일 자전거", 1300000);
		bicycle5.setDescription("프레임: supersix abo clearly capable WA96");
		bicycle5.setCategory("Bicycle5");
		bicycle5.setManufacturer("Cannondale");
		bicycle5.setUnitsInStock(1000);
		bicycle5.setCondition("New");
        
        bicycle5.setFilename("P1238.jpg");
        

        Product bicycle6 = new Product("P1239", "피나렐로 자전거", 2400000);
		bicycle6.setDescription("프레임: dogma F 2022 disc B614 ");
		bicycle6.setCategory("Bicycle6");
		bicycle6.setManufacturer("Pinarello");
		bicycle6.setUnitsInStock(1000);
		bicycle6.setCondition("New");
        
        bicycle6.setFilename("P1239.jpg");
        
        
        
        Product bicycle7 = new Product("P1240", "스페셜 라이즈드 자전거", 1800000);
		bicycle7.setDescription("프레임: SL8 2024 Tarmac shimano dura-ace di2");
		bicycle7.setCategory("Bicycle7");
		bicycle7.setManufacturer("Specialized");
		bicycle7.setUnitsInStock(1000);
		bicycle7.setCondition("New");
        
        bicycle7.setFilename("P1240.jpg");
        
        
        
        Product bicycle8 = new Product("P1241", "메리다 자전거", 800000);
		bicycle8.setDescription("프레임: scultura 5000 CF3 disc ");
		bicycle8.setCategory("Bicycle8");
		bicycle8.setManufacturer("Merida");
		bicycle8.setUnitsInStock(1000);
		bicycle8.setCondition("New");
        
        bicycle8.setFilename("P1241.jpg");
        
        
        
        Product bicycle9 = new Product("P1242", "써벨로 자전거", 6000000);
		bicycle9.setDescription("프레임: S5 Dura Ace di2");
		bicycle9.setCategory("Bicycle9");
		bicycle9.setManufacturer("Cervelo");
		bicycle9.setUnitsInStock(1000);
		bicycle9.setCondition("New");
        
        bicycle9.setFilename("P1242.jpg");
		//9개의 자전거 사진 업로드하기
        
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가
        
        //사진크기 일정하게 하는 코드 모름

		listOfProducts.add(bicycle1);
		listOfProducts.add(bicycle2);
		listOfProducts.add(bicycle3);
        listOfProducts.add(bicycle4);
        listOfProducts.add(bicycle5);
        listOfProducts.add(bicycle6);
        listOfProducts.add(bicycle7);
        listOfProducts.add(bicycle8);
        listOfProducts.add(bicycle9);
       
		// listOfProducts.add(상품명);
        // 사진을 추가할때마다 작성할것 매우 중요
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
    
    // 6주차 상품세부정보 수정하기
    public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}

    public void addProduct(Product product) {
	listOfProducts.add(product);
    }                             //7주차 상품등록하기


}

