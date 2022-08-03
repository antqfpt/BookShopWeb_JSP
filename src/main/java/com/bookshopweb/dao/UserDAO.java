package com.bookshopweb.dao;

import com.bookshopweb.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.customizer.Define;
import org.jdbi.v3.sqlobject.statement.GetGeneratedKeys;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;
import java.util.Optional;

@RegisterBeanMapper(User.class)
public interface UserDAO extends DAO<User> {
    @Override
    @SqlUpdate("INSERT INTO user VALUES (default, :username, :password, :fullname, " +
               ":email, :phoneNumber, :gender, :address)")
    @GetGeneratedKeys("id")
    long insert(@BindBean User user);

    @Override
    @SqlUpdate("UPDATE user SET username = :username, password = :password, fullname = :fullname, " +
               "email = :email, phoneNumber = :phoneNumber, gender = :gender, address = :address " +
               "WHERE id = :id")
    void update(@BindBean User user);

    @Override
    @SqlUpdate("DELETE FROM user WHERE id = :id")
    void delete(@Bind("id") long id);

    @Override
    @SqlQuery("SELECT * FROM user WHERE id = :id")
    Optional<User> getById(@Bind("id") long id);

    @Override
    @SqlQuery("SELECT * FROM user")
    List<User> getAll();

    @Override
    @SqlQuery("SELECT * FROM user LIMIT :limit OFFSET :offset")
    List<User> getPart(@Bind("limit") int limit, @Bind("offset") int offset);

    @Override
    @SqlQuery("SELECT * FROM user ORDER BY <orderBy> <orderDir> LIMIT :limit OFFSET :offset")
    List<User> getOrderedPart(@Bind("limit") int limit, @Bind("offset") int offset,
                              @Define("orderBy") String orderBy, @Define("orderDir") String orderDir);

    @SqlQuery("SELECT * FROM user WHERE username = :username")
    Optional<User> getByUsername(@Bind("username") String username);

    @SqlQuery("SELECT COUNT(id) FROM user")
    long count();
}
