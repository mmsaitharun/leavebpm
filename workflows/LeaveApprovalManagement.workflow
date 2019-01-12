{
	"contents": {
		"e30ff366-7ca3-4c46-a276-6597d37431ca": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "leaveapprovalmanagement",
			"subject": "Leave Approval for ${context.employeeName}",
			"businessKey": "${context.requestId}",
			"name": "LeaveApprovalManagement",
			"documentation": "Leave Approval Management",
			"lastIds": "6410c536-19ac-4465-b1a4-03bc0e59ddaf",
			"events": {
				"7c6f8f9e-8f98-428a-bd93-022d8ef5ca55": {
					"name": "Start"
				},
				"fc3c2d2f-8484-4035-948a-c3a3c357131e": {
					"name": "End"
				}
			},
			"activities": {
				"80147a0e-ca2b-4721-87c4-113bddbab1a3": {
					"name": "Leave Approver Task"
				}
			},
			"sequenceFlows": {
				"4aec9d14-327e-4002-8629-fc7d277e666f": {
					"name": "SequenceFlow1"
				},
				"aaa11a54-20f6-42ba-bfa8-72aa594bf8a0": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"6d04d05a-5a0b-4e59-a268-c82c9238f4d3": {}
			}
		},
		"7c6f8f9e-8f98-428a-bd93-022d8ef5ca55": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start",
			"sampleContextRefs": {
				"7f7f1203-0dc8-4a09-a53f-4f945f8f72e2": {}
			}
		},
		"fc3c2d2f-8484-4035-948a-c3a3c357131e": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"80147a0e-ca2b-4721-87c4-113bddbab1a3": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Leave Approval for ${context.employeeName}",
			"description": "Approval of ${context.leaveType} for ${context.employeeName} from ${context.leaveStart} – ${context.leaveEnd}.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "P000057",
			"formReference": "/forms/LeaveApprovalManagement/LeaveApproval.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "leaveapproval"
			}, {
				"key": "formRevision",
				"value": "dev"
			}],
			"id": "usertask1",
			"name": "Leave Approver Task",
			"dueDateRef": "778e0e3f-c0ae-4118-a193-334946fbb80a"
		},
		"4aec9d14-327e-4002-8629-fc7d277e666f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "7c6f8f9e-8f98-428a-bd93-022d8ef5ca55",
			"targetRef": "80147a0e-ca2b-4721-87c4-113bddbab1a3"
		},
		"aaa11a54-20f6-42ba-bfa8-72aa594bf8a0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "80147a0e-ca2b-4721-87c4-113bddbab1a3",
			"targetRef": "fc3c2d2f-8484-4035-948a-c3a3c357131e"
		},
		"6d04d05a-5a0b-4e59-a268-c82c9238f4d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"0c417220-5705-4b98-90c1-64e7d1318773": {},
				"0fb9c5f3-3f9e-4258-b347-0bc5d998cb07": {},
				"f81fca0e-5e4c-436d-9458-9defc06760c7": {},
				"6749c1b5-5056-46f5-96e2-3bf8ae57b716": {},
				"73d9c0a1-abaf-4960-8e70-8b8a53884b6c": {}
			}
		},
		"7f7f1203-0dc8-4a09-a53f-4f945f8f72e2": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/LeaveApprovalManagement/LeaveInitialContext.json",
			"id": "default-start-context"
		},
		"0c417220-5705-4b98-90c1-64e7d1318773": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 73,
			"y": 19,
			"width": 32,
			"height": 32,
			"object": "7c6f8f9e-8f98-428a-bd93-022d8ef5ca55"
		},
		"0fb9c5f3-3f9e-4258-b347-0bc5d998cb07": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 517,
			"y": 379,
			"width": 35,
			"height": 35,
			"object": "fc3c2d2f-8484-4035-948a-c3a3c357131e"
		},
		"f81fca0e-5e4c-436d-9458-9defc06760c7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "89,35 194.37074279785156,35 194.37074279785156,215.75 333.2414855957031,215.75",
			"sourceSymbol": "0c417220-5705-4b98-90c1-64e7d1318773",
			"targetSymbol": "6749c1b5-5056-46f5-96e2-3bf8ae57b716",
			"object": "4aec9d14-327e-4002-8629-fc7d277e666f"
		},
		"6749c1b5-5056-46f5-96e2-3bf8ae57b716": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 283.2414855957031,
			"y": 185.75,
			"width": 100,
			"height": 60,
			"object": "80147a0e-ca2b-4721-87c4-113bddbab1a3"
		},
		"73d9c0a1-abaf-4960-8e70-8b8a53884b6c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "333.2414855957031,215.75 450.3707275390625,215.75 450.3707275390625,396.5 534.5,396.5",
			"sourceSymbol": "6749c1b5-5056-46f5-96e2-3bf8ae57b716",
			"targetSymbol": "0fb9c5f3-3f9e-4258-b347-0bc5d998cb07",
			"object": "aaa11a54-20f6-42ba-bfa8-72aa594bf8a0"
		},
		"6410c536-19ac-4465-b1a4-03bc0e59ddaf": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"778e0e3f-c0ae-4118-a193-334946fbb80a": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P5D",
			"id": "timereventdefinition1"
		}
	}
}