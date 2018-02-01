# README

. Course

titre:string [present, unique, length 140]
Description:text [present]

. Lessons

belongs_to :course
titre:string [present, length 140, unique]
course:id [integer]
