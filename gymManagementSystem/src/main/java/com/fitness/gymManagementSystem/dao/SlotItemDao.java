package com.fitness.gymManagementSystem.dao;

import java.util.List;
import java.util.Set;

import com.fitness.gymManagementSystem.bean.SlotItem;
import com.fitness.gymManagementSystem.bean.SlotItemEmbed;

public interface SlotItemDao {
	public void save(SlotItem slotItem);
	public List<SlotItem> displayAllItem();
	public SlotItem findItemById(SlotItemEmbed id);
	public Integer findSeatBookedById(SlotItemEmbed id);
	public Set<SlotItemEmbed> findAllEmbeds();
	public boolean isItemIdAvailable(Long itemId);
}
