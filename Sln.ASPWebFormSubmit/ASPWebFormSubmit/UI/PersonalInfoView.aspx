<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PersonalInfoView.aspx.cs" Inherits="ASPWebFormSubmit.UI.PersonalInfoView" %>


<asp:Content ID="Content1" ContentPlaceHolderID="pgBreadCrum" runat="server">
    <h3 class="page-title">Add Customer</h3>

    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <%--<a href="/dashboard.aspx">Dashboard</a>--%>
            <i class="icon-angle-right"></i>
        </li>
        <li>
            <a href="javascript:void(0)">Personal Info Setup</a>
        </li>
    </ul>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="pgContent" runat="server">

    <div class="tabbable tabbable-custom boxless">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#tab_1" data-toggle="tab">Personal Info Setup</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="tab_1">
                <div class="portlet box blue">
                    <div class="portlet-title">
                        <h4><i class="icon-reorder"></i>Personal Info Setup</h4>
                    </div>
                    <div class="portlet-body form">
                        <div class="alert alert-success" runat="server" id="vrMsg" visible="false">
                            <button class="close" data-dismiss="alert"></button>
                            Personal Info has been added.
                        </div>
                        <div class="alert" runat="server" id="vrMsgAlert" visible="false">
                            <button class="close" data-dismiss="alert"></button>
                            <strong>Duplicate </strong>Personal Info has been added.
                        </div>
                        <!-- BEGIN FORM-->
                        <form id="Form3" action="" class="form-horizontal form-row-seperated" method="POST" enctype="multipart/form-data">
                            <button type="button" class="btn green" data-toggle="modal" data-target="#myModal" style="margin: 0px 0px 10px 0px;">Add Personal Info</button>

                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Date of Birth</th>
                                        <th>City</th>
                                        <th>Country</th>
                                        <th>Mobile No</th>
                                        <th>NID</th>
                                        <th>Email Address</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="RepPersonalInfo" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("FirstName") %></td>
                                                <td><%# Eval("LastName") %></td>
                                                <td><%# Eval("DateOfBirth") %></td>
                                                <td><%# Eval("City") %></td>
                                                <td><%# Eval("Country") %></td>
                                                <td><%# Eval("MobileNo") %></td>
                                                <td><%# Eval("NID") %></td>
                                                <td><%# Eval("Email") %></td>

                                                <td class="text-center">
                                                    <a class="fancybox fancybox.iframe" href="EditPersonalInfo.aspx?PersonalInfoID=<%# Eval("PersonalInfoID") %>">Edit</a> |
                                                    <a href="PersonalInfoView.aspx?delete=yes&PersonalInfoID=<%# Eval("PersonalInfoID") %>">Delete</a>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </tbody>
                            </table>

                        </form>
                        <!-- END FORM-->
                    </div>
                </div>
            </div>
        </div>
    </div>




    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog large">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" style="background-image: none !important;">&times;</button>
                    <h4 class="modal-title">Add New Customer</h4>
                </div>
                <div class="modal-body">
                    <!-- BEGIN FORM-->
                    <form id="Form2" action="" class="form-horizontal form-row-seperated" method="POST" enctype="multipart/form-data">

                        <div class="control-group">
                            <label class="control-label">First Name</label>
                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="txt_first_name" required="" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Last Name</label>
                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="txt_last_name" required="" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Date of Birth</label>
                            <div class="controls">
                                <div class="input-append date date-picker" data-date="02-12-2017" data-date-format="dd-mm-yyyy">
                                    <input class="m-wrap date-picker" size="16" name="txt_dateofbirth" type="text" />
                                </div>
                                <small class="span12" style="padding: 0px; margin: 0px;">Month-Day-Year</small>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">City</label>
                            <div class="controls">
                                <select class="m-wrap span12" name="txt_city" required="">
                                    <option value="1">Dhaka</option>
                                    <option value="2">Chittagong</option>
                                    <option value="2">Khulna</option>
                                    <option value="2">Rajshahi</option>
                                    <option value="2">Barisal</option>
                                    <option value="2">Sylhet</option>
                                    <option value="2">Rangpur</option>
                                    <option value="2">Comilla</option>
                                    <option value="2">Gazipur</option>
                                    <option value="2">Narayanganj</option>
                                </select>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label">Country</label>
                            <div class="controls">
                                <select class="m-wrap span12" name="txt_country" required="">
                                    <option value="1">Afghanistan</option>
                                    <option value="2">Albania</option>
                                    <option value="2">Algeria</option>
                                    <option value="2">Bangladesh</option>
                                    <option value="2">India</option>
                                    <option value="2">USA</option>
                                    <option value="2">UK</option>
                                    <option value="2">UAE</option>
                                    <option value="2">China</option>
                                    <option value="2">Japan</option>
                                </select>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Mobile No</label>
                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="txt_mobile_no" required="" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">NID</label>
                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="txt_nid" required="" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">Email</label>
                            <div class="controls">
                                <input type="text" class="m-wrap span12" name="txt_email" required="" />
                            </div>
                        </div>

                        <div class="form-actions">
                            <button type="submit" id="btnSubmit" class="btn blue">Save</button>
                        </div>
                    </form>
                    <!-- END FORM-->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
    <!-- /Modal -->
</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="pgScripts" runat="server">
    <style>
        .dropdown-menu {
            z-index: 100000 !important;
        }
    </style>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            App.init();

            $("li a").each(function () {
                if ($(this).attr("href") == "/UI/PersonalInfoView.aspx") {
                    $(this).parent("li").addClass("active");
                    $(this).parents(".has-sub").addClass("active");
                    return;
                }
            });

            $(".fancybox").fancybox({
                maxWidth: 800,
                maxHeight: 600,
                fitToView: false,
                width: '70%',
                height: '70%',
                autoSize: false,
                closeClick: false,
                openEffect: 'none',
                closeEffect: 'none',
                afterClose: function () {
                    window.location = '/UI/PersonalInfoView.aspx';
                }

            });

        });
    </script>
</asp:Content>
