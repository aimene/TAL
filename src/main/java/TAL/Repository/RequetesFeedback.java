package TAL.Repository;

import TAL.model.Feedback;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RequetesFeedback extends JpaRepository<Feedback, Integer> {
}
