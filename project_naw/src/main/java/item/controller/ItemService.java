package item.controller;

import java.util.List;

import item.bean.ItemDTO;

public interface ItemService {
	public List<ItemDTO> itemList();
	public ItemDTO itemView();
}
