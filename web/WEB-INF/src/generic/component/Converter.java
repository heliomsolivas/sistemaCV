package generic.component;

import java.awt.Dimension;
import java.awt.Insets;
import java.io.File;
import java.io.FileOutputStream;

import org.zefer.pd4ml.PD4Constants;
import org.zefer.pd4ml.PD4ML;
import org.zefer.pd4ml.PD4PageMark;

public class Converter {

	public static void main(String[] args) throws Exception {
		Converter converter = new Converter();
		String htmlFileName = args[0];
		File pdfFile = new File(args[1]);
		converter.generatePDF(htmlFileName, pdfFile, PD4Constants.A4, args.length > 2 ? args[2] : null, args.length > 3 ? args[3] : null );
	}

	private void generatePDF(String inputHTMLFileName, File outputPDFFile, Dimension format, String fontsDir, String headerBody) throws Exception {
		try {
			FileOutputStream fos = new FileOutputStream(outputPDFFile);
			
			PD4ML pd4ml = new PD4ML();
			pd4ml.setPageInsets(new Insets(20, 10, 10, 10));
			pd4ml.setHtmlWidth(950);
			pd4ml.setPageSize(pd4ml.changePageOrientation(format)); // landscape page orientation
			
			if ( fontsDir != null && fontsDir.length() > 0 ) {
				pd4ml.useTTF( fontsDir, true );
			}
			
			if ( headerBody != null && headerBody.length() > 0 ) {
				PD4PageMark header = new PD4PageMark();
				header.setAreaHeight(-1); // autocompute
				header.setHtmlTemplate( headerBody ); // autocompute
				pd4ml.setPageHeader(header);
			}
			
			pd4ml.enableDebugInfo();
			pd4ml.render("file:" + inputHTMLFileName, fos);
		} catch (Exception e) {
			// TODO: handle exception
		}		
	}
}
