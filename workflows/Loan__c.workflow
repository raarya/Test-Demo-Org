<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>loan_approved</fullName>
        <description>loan approved</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/loan_approval_rejection</template>
    </alerts>
    <alerts>
        <fullName>loan_rejected</fullName>
        <description>loan rejected</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/loan_approval_rejections</template>
    </alerts>
</Workflow>
