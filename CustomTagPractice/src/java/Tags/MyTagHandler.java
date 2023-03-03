
package Tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;
import java.util.Date;


public class MyTagHandler extends TagSupport{

    @Override
    public int doStartTag() throws JspException {
        try {
            JspWriter out=pageContext.getOut();
            out.println("<h1>This is my custom page</h1>");
            out.println("<%= new Date().toString()%>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SKIP_BODY; // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
}
