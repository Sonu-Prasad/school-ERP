package helper;
import java.util.List;
import java.util.Map;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.LearningMaterialBean;
import dao.LeariningMaterialDAOImpl;

import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
//import org.springframework.web.servlet.view.document.AbstractExcelView;
import org.springframework.web.servlet.view.document.AbstractXlsView;;
public class LearningMaterialExcelList extends AbstractXlsView
{
	@Override
	public void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
	        HttpServletResponse response) throws Exception {
	    // TODO Auto-generated method stub

		@SuppressWarnings("unchecked")
		List<LearningMaterialBean> docList = (List<LearningMaterialBean>) model.get("listBooks");
	    // change the file name
	    response.setHeader("Content-Disposition", "attachment; filename=\"Learning-material.xls\"");
	 // create excel xls sheet
	    Sheet sheet = workbook.createSheet("Users Detail");
	    sheet.setDefaultColumnWidth(30);

	    // create style for header cells
	    CellStyle style = workbook.createCellStyle();
	    Font font = workbook.createFont();
	    font.setFontName("Arial");
	    style.setFillForegroundColor(HSSFColor.BLUE.index);
	    //style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
	    //font.setBold(true);
	    font.setColor(HSSFColor.BLACK.index);
	    style.setFont(font);

       
        // create header row
	    Row header = sheet.createRow(0);
         
        header.createCell(0).setCellValue("Class");
        header.getCell(0).setCellStyle(style);
         
        header.createCell(1).setCellValue("Subject");
        header.getCell(1).setCellStyle(style);
         
        header.createCell(2).setCellValue("Chepter");
        header.getCell(2).setCellStyle(style);
         
        header.createCell(3).setCellValue("Title");
       header.getCell(3).setCellStyle(style);
         
        header.createCell(4).setCellValue("YoutubeLink");
        header.getCell(4).setCellStyle(style);
        header.createCell(5).setCellValue("File name");
        header.getCell(5).setCellStyle(style);
         
        // create data rows
        int rowCount = 1;
         
        for(LearningMaterialBean bean:docList)
        {
        	Row aRow =  sheet.createRow(rowCount++);
            aRow.createCell(0).setCellValue(bean.getClassName());
            aRow.createCell(1).setCellValue(bean.getSubject());
            aRow.createCell(2).setCellValue(bean.getChepter());
            aRow.createCell(3).setCellValue(bean.getTitle());
            aRow.createCell(4).setCellValue(bean.getUrl());
            aRow.createCell(5).setCellValue(bean.getFileName());
        }
		
	}

}
