 package com.pack;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

 
@Entity 
@Table(name="COURSE21" )
public class Course21{

	
	@Column(name="COURSE_ID")
	@Id
  	@GeneratedValue(strategy=GenerationType.IDENTITY)
	  private long courseId; 
	
	 
	@Column(name="COURSE_NAME", nullable=false)
	private String courseName; 

	public Course21() {
	}

	public Course21(String courseName) {
		this.courseName = courseName;
	}
	
	
	public long getCourseId() {
		return this.courseId;
	}

	public void setCourseId(long courseId) {
		this.courseId = courseId;
	}


	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

}
