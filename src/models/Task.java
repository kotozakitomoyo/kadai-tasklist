package models;


import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


@Entity
@NamedQueries({
    @NamedQuery(
            name = "getAllTasks",
            query = "select t from Task as t order by t.id asc"
            )
})
@Table(name = "tasks")
public class Task {

    //カラム
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="title", length=100, nullable = false)
    private String title;

    @Column(name="content", length=255)
    private String content;

    @Column(name = "start_date")
    private Date start_date;

    @Column(name = "deadline_date")
    private Date deadline_date;

    @Column(name="sintyoku")
    private String sintyoku;




  //ゲッターセッター
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getStart_date() {
        return start_date;
    }

    public void setStart_date(Date start_date) {
        this.start_date = start_date;
    }

    public Date getDeadline_date() {
        return deadline_date;
    }

    public void setDeadline_date(Date deadline_date) {
        this.deadline_date = deadline_date;
    }

    public String getSintyoku() {
        return sintyoku;
    }

    public void setSintyoku(String sintyoku) {
        this.sintyoku = sintyoku;
    }





}
