<!-----------------------------------------------------------------------Author 	 :	Your NameDate     :	September 25, 2005Description :	coldboxSamples.system.eventhandler-----------------------------------------------------------------------><cfcomponent name="ehGeneral" extends="coldbox.system.eventhandler">	<!--- ************************************************************* --->	<cffunction name="init" access="public" returntype="Any">		<cfset super.init()>		<cfreturn this>	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="onRequestStart" access="public" returntype="void">	<!--- On Request Start Code Here --->	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="onRequestEnd" access="public" returntype="void">	<!--- ON Request End Here --->	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="dspHome" access="public" returntype="void">	<cfscript>		//Exit Handlers		rc.xehUDFValidation = "ehGeneral.doUseUDF";		//or use setValue("xehUDFValidation", "ehGeneral.doUseUDF");		//Set the page's title		setValue("title", "ColdBox - Sample UDF Library Usage.");		//Set the view to display		setView("vwHome");	</cfscript>	</cffunction>	<!--- ************************************************************* --->	<!--- ************************************************************* --->	<cffunction name="doUseUDF" access="public" returntype="void">	<cfscript>		//Use the IsValidEmail() function on the UDF.cfm that was loaded		rc.validationResults = IsValidEmail( getValue("email") );		//Set messagebox accordingly		if ( rc.validationResults )			getPlugin("messagebox").setMessage("info","The email: #getValue('email')# is valid.");		else			getPlugin("messagebox").setMessage("error","The email: #getValue('email')# is not valid.");		//Run the dspHome		setNextEvent("ehGeneral.dspHome");	</cfscript>	</cffunction>	<!--- ************************************************************* ---></cfcomponent>