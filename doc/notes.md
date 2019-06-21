# Requisitos funcionales
  * Hay profesores, alumnos y asignaturas
  * Las asignaturas tienen un profesor y varios alumnos

# Requisitos no funcionales
  * Se usará bootstrap

# DDBB

* Professor
  * Name :string
  * Area :string
* Student
  * Name :string
  * Avg_mark :integer
* Subject
  * Name :string
  * Credit :integer
  * professor_id
* Student_Subject
  * Student_id
  * Subject_id


# Commands

```bash
rails g scaffold Professor name:string area:string
rails g scaffold Student name:string avg_mark:integer
rails g scaffold Subject name:string credit:integer professor:references
rails g scaffold Student_Subject student:references subject:references
```

## Models

* Professor
  * has_many :subjects
  * has_many :students, through: :subjects
* Student
  * has_many :student_subjects
  * has_many :subjects, through: :student_subjects
  * has_many :professors, through: :subjectst
* Subject
  * belongs_to :professor
  * has_many :student_subjects
  * has_many :students, through: :student_subjects
* Student_Subject
  * belongs_to :subject
  * belongs_to :student
