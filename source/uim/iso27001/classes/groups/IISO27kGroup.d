
import uim.grundschutz;




/**
 
 *
 */
interface IISO27kGroup : IISO27kElement {

	boolean canContain(Object obj);
	
	string[] getChildTypes();
	
	void addChild(CnATreeElement child);
}
