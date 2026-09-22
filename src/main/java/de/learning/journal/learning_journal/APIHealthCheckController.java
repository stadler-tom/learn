package de.learning.journal.learning_journal;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class APIHealthCheckController {
    @GetMapping("/health")
        public String health() {
            return "OK";
        }
}


