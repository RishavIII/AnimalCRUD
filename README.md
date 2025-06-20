## Description
Simple CRUD API for Elephant Objects with JPA (Hibernate)

### Version
1.0.0

## Installation
- Get the project
    - clone
        ```
      git clone https://github.com/RishavIII/AnimalCRUD.git
        ```
    - OR download zip.
- Open the project in VS Code.
- This project is built to run with jdk 21.
- [Dependencies](https://github.com/uncg-csc340/su25-jpa-crud-api/blob/3149ec363e4aae4baebe6f755df7d4c2d79c9d2c/pom.xml#L32) to JPA and Postgres in addition to the usual Spring Web. JPA handles the persistence, Postgresql is the database to be used.
- [`/src/main/resources/application.properties`](https://github.com/uncg-csc340/su25-jpa-crud-api/blob/main/src/main/resources/application.properties) This file  is the configuration for the PostgreSQL database to use for the API.
  - You MUST have the database up and running before running the project!
    - Login to your neon.tech account.
    - Locate your database project.
    - On the project dashboard, click on "Connect" and select Java.
    - Copy the connection string provided.
    - Paste it as a value for the property `spring.datasource.url`. No quotation marks.
- Build and run the main class. You should see a new table created in the Neon database.
## API Endpoints

| Method | Endpoint                        | Description                                           |
| ------ | ------------------------------- | ----------------------------------------------------- |
| GET    | `/elephants`                    | Retrieve all elephants                                |
| GET    | `/elephants/{id}`               | Retrieve elephant by its ID                           |
| GET    | `/elephants/name?key={keyword}` | Search elephants whose name contains the keyword      |
| GET    | `/elephants/gender/{gender}`    | Retrieve elephants filtered by gender                 |
| GET    | `/elephants/adults`             | Retrieve elephants considered "adults"                |
| POST   | `/elephants`                    | Create a new elephant (JSON body)                     |
| PUT    | `/elephants/{id}`               | Update an existing elephant (JSON body)               |
| DELETE | `/elephants/{id}`               | Delete an elephant by ID                              |
| POST   | `/elephants/writeFile`          | Write elephant JSON to `elephants.json` (body object) |
| GET    | `/elephants/readFile`           | Read elephant JSON from `elephants.json`              |

### Request/Response Examples

#### Create Elephant

```bash
curl -X POST http://localhost:8080/elephants \
     -H "Content-Type: application/json" \
     -d '{
           "name": "Jumbo",
           "description": "Large gray elephant",
           "gender": "Male",
           "age": 10,
           "activeDate": "2015-07-01"
         }'
```

**Response:**

```json
{
  "id": 1,
  "name": "Jumbo",
  "description": "Large gray elephant",
  "gender": "Male",
  "age": 10.0,
  "activeDate": "2015-07-01"
}
```

#### Get All Elephants

```bash
curl http://localhost:8080/elephants
```

**Response:**

```json
[
  {
    "id": 1,
    "name": "Jumbo",
    "description": "Large gray elephant",
    "gender": "Male",
    "age": 10.0,
    "activeDate": "2015-07-01"
  }
]
```

#### Update Elephant

```bash
curl -X PUT http://localhost:8080/elephants/1 \
     -H "Content-Type: application/json" \
     -d '{
           "name": "Jumbo Jr.",
           "description": "Now older and wiser",
           "gender": "Male",
           "age": 11,
           "activeDate": "2015-07-01"
         }'
```

**Response:** returns the updated elephant JSON.

#### Delete Elephant

```bash
curl -X DELETE http://localhost:8080/elephants/1
```

**Response:** HTTP 204 No Content (if configured) or JSON list of remaining elephants.

#### Write to File

```bash
curl -X POST http://localhost:8080/elephants/writeFile \
     -H "Content-Type: application/json" \
     -d '{
           "name": "FileLector",
           "description": "Elephant saved to file",
           "gender": "Female",
           "age": 8,
           "activeDate": "2018-10-01"
         }'
```

**Response:**

```
"Elephant written to JSON file successfully"
```

#### Read from File

```bash
curl http://localhost:8080/elephants/readFile
```

**Response:** returns the JSON object stored in `elephants.json`.
