/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processing;

/**
 *
 * @author deeps
 */
public class candidateBean {
    int cid;
    String fname, lname, pno, ano, sex, email;
    
    public int getCid()
    {
    return (this.cid);
    }

    public String getFname()
    {
    return (this.fname);
    }
    
    public String getLname()
    {
    return (this.lname);
    }
    
    public String getPno()
    {
    return (this.pno);
    }
    
    public String getAno()
    {
    return (this.ano);
    }
    
    public String getSex()
    {
    return (this.sex);
    }
    
    public String getEmail()
    {
    return (this.email);
    }
    
    public void setCid(int c)
    {
        this.cid=c;
    }
    
    public void setFname(String f)
    {
        this.fname=f;
    }
    
    public void setLname(String l)
    {
        this.lname=l;
    }
    
    public void setPno(String p)
    {
        this.pno=p;
    }
    
    public void setAno(String a)
    {
        this.ano=a;
    }
    
    public void setSex(String s)
    {
        this.sex=s;
    }
    
    public void setEmail(String e)
    {
        this.email=e;
    }
}
