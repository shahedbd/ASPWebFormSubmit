<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sidebar.ascx.cs" Inherits="ASPWebFormSubmit.sidebar" %>


<ul>
	<li>
		<div class="sidebar-toggler hidden-phone"></div>
	</li>
	<li class="start">
		<a href="/dashboard.aspx">
			<i class="icon-home"></i>
			<span class="title">Dashboard</span>
			<span class="selected"></span>
		</a>
	</li>
	<li class="has-sub">
		<a href="javascript:;">
			<i class="icon-bookmark-empty"></i>
			<span class="title">Import</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub">
			<li><a href="/import.aspx">Import Raw File </a></li>
			<li><a href="/showdata.aspx">Show Imported Data </a></li>

			<li><a href="/importtag.aspx">Import Tag File </a></li>
			<li><a href="/showtagdata.aspx">Show Imported Tag Data </a></li>
		</ul>
	</li>
	<li class="has-sub">
		<a href="javascript:;">
			<i class="icon-bookmark-empty"></i>
			<span class="title">System Setup</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub">
			<li><a href="/usage_types.aspx">Usage Types </a></li>
			<li><a href="/translation.aspx">Translation Rules</a></li>
			<li><a href="/view_group.aspx">View Group</a></li>
			<li><a href="/usage_group.aspx">Usage Group</a></li>
			<li><a href="/charge_classification/view_charge_classifications.aspx">Charge Classifications</a></li>
			<li><a href="/prefix_list/view_prefix_list.aspx">Prefix Lists</a></li>
			<li><a href="/prefix/view_prefix.aspx">Prefix</a></li>
			<li><a href="/vat/view_vat.aspx">VAT</a></li>
			<li><a href="/report_branding/view_report_branding.aspx">Report Branding</a></li>
			<li><a href="/customer/view_customer.aspx">View Customer Configuration</a></li>
			<li><a href="/customer/view_customer_group.aspx">View Customer Groups</a></li>
		</ul>
	</li>
	<li class="has-sub">
		<a href="javascript:;">
			<i class="icon-warning-sign"></i>
			<span class="title">Smart Alerting</span>
			<span class="arrow"></span>
		</a>
		<ul class="sub">
            <li><a href="/smart_alert_setup/view_smart_alert_setup.aspx">Smart Alert Setup</a></li>
			<li><a href="/customer_management/view_customer_setup.aspx">Customer Setup</a></li>
			<li><a href="/call_alerts/import_call_records.aspx">Import Alert File </a></li>
			<li><a href="/call_alerts/view_call_alerts_rules.aspx">Alert Rules </a></li>
			<li><a href="/call_alerts/view_record_types.aspx">Configure Record Types </a></li>
			<li><a href="/call_alerts/view_gsm_codes.aspx">View GSM Code </a></li>
			<li><a href="/call_alerts/view_tariff_classes.aspx">View Tariff Classes </a></li>
			<li><a href="/smart_alert_setup/generate_report.aspx">Generate Report</a></li>
		</ul>
	</li>


	<li class="has-sub">
		<a href="javascript:;">
			<i class="icon-bookmark-empty"></i>
			<span class="title">User Management</span>
			<span class="arrow "></span>
		</a>
		<ul class="sub">
			<li><a href="/user_management/add_new_user.aspx">Add New User</a></li>
		</ul>
	</li>

</ul>




