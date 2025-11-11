({
    init : function(component, event, helper) {
	},
    handleUploadFinished : function(component, event) {
		var uploadedFiles = event.getParam("files");
		var cdids = component.get("v.cdIDs");
		var cdLabels = component.get("v.cdLabels");
        uploadedFiles.forEach((file) => {
	        cdids.push(file.documentId); 
			cdLabels.push(file.name);
		});
		component.set("v.filesQueued", cdids.length);
    },
	handleClick : function(component, event) {
		var cdids = component.get("v.cdIDs");
		var cdLabels = component.get("v.cdLabels");
		var queuedToggle = component.get("v.filesQueued");
		cdids.length = 0;
		cdLabels.length = 0;
		component.set("v.filesQueued", 0);
		alert("File attachments removed!");
	},
})