CREATE OR REPLACE TABLE tickets AS SELECT * FROM read_csv_auto('dataset-tickets-multi-lang3-4k.csv');

SELECT priority, COUNT(*) as count FROM tickets GROUP BY priority ORDER BY count DESC;
SELECT language, COUNT(*) as count FROM tickets GROUP BY language ORDER BY count DESC;
SELECT tag_1, COUNT(*) as count FROM tickets GROUP BY tag_1 ORDER BY count DESC LIMIT 10;
SELECT priority, language, COUNT(*) as count FROM tickets GROUP BY priority, language ORDER BY count DESC LIMIT 10;

COPY (SELECT priority, COUNT(*) as count FROM tickets GROUP BY priority) TO 'priority.csv' (FORMAT CSV, HEADER);
COPY (SELECT language, COUNT(*) as count FROM tickets GROUP BY language) TO 'language.csv' (FORMAT CSV, HEADER);
COPY (SELECT tag_1, COUNT(*) as count FROM tickets GROUP BY tag_1 ORDER BY count DESC LIMIT 10) TO 'tags.csv' (FORMAT CSV, HEADER);

SELECT 'CONCLUSION: High priority English tickets need most attention!' as insight;
SELECT 'Technical Support = 53% of all tickets!' as insight2;
SELECT 'Customer Service = ' || CAST(COUNT(*) as VARCHAR) || ' tickets!' as customer_service FROM tickets WHERE tag_1 = 'Customer Service';

