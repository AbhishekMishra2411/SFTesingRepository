<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">

/* -----------------------------------------------------*/

    <fieldUpdates>
        <fullName>Payable_Invoice_Approved_Record_Type</fullName>
        <description>Changes the Payable Invoice record type from Standard to Approved after the record has been marked as approved.</description>
        <field>RecordTypeId</field>
        <lookupValue>Approved_Payable_Invoice</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Payable Invoice - Approved Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Payable_Invoice_Approved_Record_Type</fullName>
        <description>Changes the Payable Invoice record type from Standard to Approved after the record has been marked as approved.</description>
        <field>RecordTypeId</field>
        <lookupValue>Approved_Payable_Invoice</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Payable Invoice - Approved Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Payable_Invoice_Standard_Record_Type</fullName>
        <description>Updates the record type back to the Standard record type.</description>
        <field>RecordTypeId</field>
        <lookupValue>Standard_Payable_Invoice</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Payable Invoice - Standard Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Payable Invoice - Convert to Approved Record Type</fullName>
        <actions>
            <name>Payable_Invoice_Approved_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>c2g__codaPurchaseInvoice__c.ffbext__Approved__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Changes the record type from Standard to Approved when the record is Approved. This will change the page layout so it&apos;s read only for most fields.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Payable Invoice - Convert to Standard Record Type</fullName>
        <actions>
            <name>Payable_Invoice_Standard_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>c2g__codaPurchaseInvoice__c.ffbext__Approved__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <criteriaItems>
            <field>c2g__codaPurchaseInvoice__c.RecordTypeId</field>
            <operation>equals</operation>
            <value>Approved Payable Invoice</value>
        </criteriaItems>
        <description>Changes the record type to Standard when the record is unapproved. This will allow the user to edit fields again.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
