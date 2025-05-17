package com.example.student.repository;

import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;

import ch.qos.logback.core.joran.event.SaxEvent;

public class repository {
	public interface StudentRepository extends JpaRepository<SaxEvent, Long> {
	    <Students> Page<Students> findByNameContainingIgnoreCaseOrEmailContainingIgnoreCase(String name, String email, Pageable pageable);
	}
}
