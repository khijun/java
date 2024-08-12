package shop;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.ToString;

@Getter
@AllArgsConstructor
@ToString
public class CartProducts {
	private int id;
	private String name;
	private String description;
	private double price;
	private int stock;
	private int product_id;
	private int quantity;
}
