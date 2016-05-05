<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>notify account owner</fullName>
        <active>true</active>
        <formula>AND(
 AnnualRevenue &gt; 1000000,OwnerId &lt;&gt; LastModifiedById
)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
