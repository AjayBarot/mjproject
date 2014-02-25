package cl_data1;
import java.sql.*;
public class edit 
{
	public String id="";
	public String n_name="";
	public String n_address ="";
	
	public String n_city ="";
	public String n_fees ="";
	public String n_name1="";
	public String n_mail="";
	public String n_comment="";
	public String n_flag="";
	int c=0;
	public ResultSet edit_data()
	{
		ResultSet rs=null;
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String s_data ="Select name,address,city,fees from stud_data where id = '"+id+"'";
			Statement st = con.createStatement();
			rs=st.executeQuery(s_data);
			
			
			}
			catch(Exception ex){}
			return(rs);
	}
	
	public int update_data()
	{
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String str_up = "update stud_data set name = '"+n_name+"' , address = '"+n_address+"' , city = '"+n_city+"' , fees = '"+n_fees+"'  where id = '"+id+"'";
			Statement st = con.createStatement();
			 c= st.executeUpdate(str_up);
			
			
			}
			catch(Exception ex){}
			return (c);
	}
	
	public int update_cmnt()
	{
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String str_up = "update stud_cmnt set  flag = '"+n_flag+"',c_name='"+n_name1+"',c_mail='"+n_mail+"',c_comment='"+n_comment+"'  where c_name = '"+n_name1+"'";
			Statement st = con.createStatement();
			 c= st.executeUpdate(str_up);
			
			
			}
			catch(Exception ex){}
			return (c);
	}
	
	public int hide_data()
	{
			try
			{
			Connect1 obj = new Connect1();
			Connection con = obj.get_con();
			
			
			String str_up = "update stud_cmnt set  flag = '"+n_flag+"' where c_name = '"+n_name1+"'";
			Statement st = con.createStatement();
			 c= st.executeUpdate(str_up);
			
			
			}
			catch(Exception ex){}
			return (c);
	}
	
}
