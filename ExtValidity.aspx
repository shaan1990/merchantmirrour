<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterNew.master" AutoEventWireup="true" CodeFile="ExtValidity.aspx.cs" Inherits="Admin_ExtValidity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="text-center text-primary"><i class="fa fa-pencil-square-o pr-1"></i>Extend User's Login Validity</h2>
        </div>
    </div>

    <hr />

    <div class="alert alert-success alert-dismissible fade show" role="alert" runat="server" visible="false" id="divSuccess">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
        <span runat="server" id="lblSuccess" aria-hidden="true">&times;</span>
    </div>

    <div class="alert alert-danger alert-dismissible" runat="server" visible="false" id="divError">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">&times;</button>
        <span runat="server" id="lblError" aria-hidden="true">&times;</span>
    </div>

    <br />

    <div class="row justify-content-center align-self-center mt-5">
        <div class="col-md-6 col-lg-6 col-sm-6 login-form-2 shadow p-3 mb-5 rounded bg-white">
            <h3>Extend User's Validity</h3>

            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-user pr-1"></i>Username :</span>
                <asp:TextBox ID="txtUser" runat="server" class="form-control form-control-sm" required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-calendar pr-1"></i>Extend Upto :</span>
                <asp:TextBox ID="txtExtendDate" runat="server" class="form-control form-control-sm" ReadOnly="false" TextMode="Date" required="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="btnExtendValidity" runat="server" Text="Extend" class="btn btn-warning w-25 btn-sm" OnClick="btnExtendValidity_Click" />
            </div>

        </div>

    </div>


</asp:Content>

