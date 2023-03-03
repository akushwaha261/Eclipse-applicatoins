
package Tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class printTable extends TagSupport{
    public int number;
    public String color;    
    public void setNumber(int number){
        this.number=number;
    }
    public void setColor(String color){
        this.color=color;
    }
    @Override
    public int doStartTag() throws JspException {
        
        try {
            JspWriter out=pageContext.getOut();
            out.println("<div style=' color:"+color+"' >");
                for(int i=0;i<10;i++){
                    out.println(i*number+"<br>");
                }
            out.println("</div>");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SKIP_BODY;
    }
    
}
