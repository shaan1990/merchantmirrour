<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterNew.master" AutoEventWireup="true" CodeFile="PreRegistered.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="text-center text-primary"><i class="fa fa-pencil-square-o pr-1"></i>Pre Registered Users</h2>
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

    <div class="row shadow rounded-bottom" >
        <div class="col-lg-12 col-md-12 col-sm-12">
            <asp:GridView ID="grvPreRegisteredLists" runat="server" CssClass="table table-responsive small text-center" Width="100%"
                GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False" Style="display: table;" OnSelectedIndexChanged="grvPreRegisteredLists_SelectedIndexChanged"
                EmptyDataText="No newly applied registered users are found">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" />
                    <asp:BoundField DataField="Role" HeaderText="Role" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="DOR" HeaderText="DOR" />
                    <asp:BoundField DataField="Pan" HeaderText="Pan" />
                    <asp:BoundField DataField="Adhaar" HeaderText="Adhaar" />
                    <asp:BoundField DataField="Voter ID" HeaderText="Voter ID" />
                    <asp:CommandField SelectText="Active" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>



    <div class="row justify-content-center align-self-center mt-5">
        <div class="col-md-6 col-lg-6 col-sm-6 login-form-2 shadow p-3 mb-5 rounded bg-white">
            <h3>Regsitration Details</h3>

            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-pencil pr-1"></i>Name :</span>
                <asp:TextBox ID="txtName" runat="server" class="form-control form-control-sm" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-phone pr-1"></i>Contact Number :</span>
                <asp:TextBox ID="txtContact" runat="server" class="form-control form-control-sm" ReadOnly="false"></asp:TextBox>
            </div>

            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-envelope-o pr-1"></i>Email :</span>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-sm" ReadOnly="false"></asp:TextBox>
            </div>

            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-id-card-o pr-1"></i>PAN :</span>
                <asp:TextBox ID="txtPAN" runat="server" class="form-control form-control-sm" MaxLength="10" ReadOnly="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-id-card-o pr-1"></i>Adhaar :</span>
                <asp:TextBox ID="txtAdhaar" runat="server" class="form-control form-control-sm" MaxLength="12" ReadOnly="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <span class="font-weight-bold"><i class="fa fa-address-card-o pr-1"></i>Voter Identity :</span>
                <asp:TextBox ID="txtVoterIdentity" runat="server" class="form-control form-control-sm" ReadOnly="true"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="btnUpdateRegistration" runat="server" Text="Update & Active" class="btn btn-warning w-25 btn-sm" OnClick="btnUpdateRegistration_Click" />
            </div>

        </div>

    </div>


</asp:Content>

