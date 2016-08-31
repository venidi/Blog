package com.venidi.repository;

import com.venidi.model.BlogsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by venidi on 16-8-19.
 */
@Repository
public interface BlogRepository extends JpaRepository<BlogsEntity,Integer> {
    //修改博客内容
    @Modifying
    @Transactional
    @Query("update BlogsEntity blog set blog.title=:qTitle,blog.content=:qContent where blog.id=:qId")
    void updateBlog(@Param("qTitle") String title,  @Param("qContent") String content, @Param("qId") int id);
}

