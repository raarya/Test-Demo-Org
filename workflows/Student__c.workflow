<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Student_Board</fullName>
        <description>Student Board</description>
        <protected>false</protected>
        <recipients>
            <field>Personal_Email_ID__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Student_update</template>
    </alerts>
    <rules>
        <fullName>Record Update</fullName>
        <actions>
            <name>Student_Board</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Student__c.Billing_Country__c</field>
            <operation>equals</operation>
            <value>NL</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
