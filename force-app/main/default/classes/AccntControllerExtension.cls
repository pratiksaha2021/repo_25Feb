public with sharing class AccntControllerExtension {
    private ApexPages.StandardSetController setController;
 
    public AccntControllerExtension(ApexPages.StandardSetController setController) {
        this.setController = setController;
        
        Account [] records = [SELECT Id, Name FROM Account LIMIT 30];
        setController.setSelected(records);
    }
}