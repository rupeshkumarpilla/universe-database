🌌 Universe Database (PostgreSQL)

This project contains the SQL schema and data dump for a fictional **universe database**, designed to model relationships between galaxies, stars, planets, moons, and astronauts.

📁 File Included

- `universe.sql`: SQL file that creates the database structure and populates it with sample data.

🧱 Tables & Relationships

The database contains the following tables:

| Table     | Description                              |
|-----------|------------------------------------------|
| `galaxy`  | Each galaxy has many stars               |
| `star`    | Each star belongs to a galaxy            |
| `planet`  | Each planet orbits a star                |
| `moon`    | Each moon orbits a planet                |
| `astronaut` | Humans who've explored parts of the universe |

🔗 Foreign Key Relationships

- `star.galaxy_id` → `galaxy.galaxy_id`
- `planet.star_id` → `star.star_id`
- `moon.planet_id` → `planet.planet_id`

🔧 Technologies Used

- PostgreSQL
- Bash (used for backup/export with `pg_dump`)
- `psql` CLI

🛠️ How to Use

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/universe-database.git
   cd universe-database
