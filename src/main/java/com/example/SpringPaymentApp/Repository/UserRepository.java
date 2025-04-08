package com.example.SpringPaymentApp.Repository;
import com.example.SpringPaymentApp.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity,Integer> {
	boolean existsByUserNameAndPassword(String userName,String password);

	boolean existsByUserId(int userId);

	UserEntity findByUserName(String userName);
	

}

	


