# DDBB

* Professor
  * Name :string
  * Area :string
* Student
  * Name :string
  * Avg_mark :int
* Subject
  * Name :string
  * Credit :int
  * professor_id
* Student_Subject
  * Student_id
  * Subject_id


# Commands

```bash
rails g scaffold Professor name:string area:string
rails g scaffold Student name:string avg_mark:int
rails g scaffold Subject name:string credit:int professor:references
rails g scaffold Student_Subject student:references subject:references
```

## Models

* Professor
  * has_many :subjects
  * has_many :students, through: :Student_Subject
* Student
  * has_many :subjects
  * has_many :professors, through: :Student_Subject
* Subject
  * belongs_to :professors
  * has_many :students, through: :Student_Subject
