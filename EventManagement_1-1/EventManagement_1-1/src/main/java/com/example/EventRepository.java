package com.example;

import com.example.EventModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EventRepository extends JpaRepository<EventModel, Long> {
    // custom query methods (optional)
}
