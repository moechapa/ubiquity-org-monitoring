({
    checkForEscalation : function(component, event, helper) {
        var action = component.get("c.isEscalated");
        var acctId = component.get('v.recordId');
        action.setParams({"accountId": acctId});

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.isEscalated", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    getEscalation : function(component, event, helper) {
        var action = component.get("c.getEscalatedRecord");
        var acctId = component.get('v.recordId');
        action.setParams({"accountId": acctId});

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.escRecord", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
    },
    
})