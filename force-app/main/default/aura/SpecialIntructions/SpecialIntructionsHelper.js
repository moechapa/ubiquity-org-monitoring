({
	checkForSi : function(component, event, helper) {
        var action = component.get("c.hasSi");
        var recId = component.get('v.recordId');
        action.setParams({"recId": recId});

        action.setCallback(this, function(response) {
            var state  = response.getState();   
            if (state === "SUCCESS") {
                component.set("v.advRecord", response.getReturnValue());

            }
        });
        $A.enqueueAction(action);
    }
})