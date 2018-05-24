package com.szl.dao;

import com.szl.domain.Discase;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created by zsc on 2017/1/15.
 */
@Mapper
public interface DiscaseDao {

    public void insertDiscase(Discase discase);

    public void insertAllDiscase(List<Discase> userList);

    public Discase selectDiscaseById(int discaseId);

    public List<Discase> selectAllDiscases();

    public void updateDiscase(Discase discase);

    public void deleteDiscase(int Id);
}
