package helper;

import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import beans.Classbean;
import beans.LearningMaterialBean;

import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class PdfBuilder extends LearningMaterialPdfview
{
	
    protected void buildPdfDocument(Map<String, Object> model, Document doc,
            PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // get data model which is passed by the Spring container
        @SuppressWarnings("unchecked")
		List<LearningMaterialBean> listBooks = (List<LearningMaterialBean>) model.get("listBooks");
        try {
			PdfPTable table = new PdfPTable(7);
			table.setWidthPercentage(100.0f);
	       // table.setWidths(new float[] {3.0f, 2.0f, 2.0f, 2.0f, 1.0f});
	       // table.setSpacingBefore(10);
			  table.addCell("S.No");
			  table.addCell("Class");
			  table.addCell("Subject");
			  table.addCell("Chepter");
			  table.addCell("Title");
			  table.addCell("YoutubeLink");
			  table.addCell("File name");
			  int i=1;
			  for(LearningMaterialBean bean:listBooks)
				 {
				  table.addCell(String.valueOf(i++));
				  table.addCell(bean.getClassName());
				  table.addCell(bean.getSubject());
				  table.addCell(bean.getChepter());
				  table.addCell(bean.getTitle());
				  table.addCell(bean.getUrl());
				  table.addCell(bean.getFileName()); 
				 }
			  doc.add(table);
			  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
