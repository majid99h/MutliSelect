<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Multiselct._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
    <script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=userReg]').multiselect({
                includeSelectAllOption: true,
                enableFiltering: true
            });
        });
    </script>
    <asp:ListBox ID="userReg" runat="server" 
        SelectionMode="Multiple"
        DataValueField="RegistrationCode"
         DataTextField="FirstName"
         AutoPostBack="false">
        
    </asp:ListBox>
    <asp:Button Text="Submit" runat="server" OnClick="Submit" />
    <asp:Label ID="lblSelected" runat="server"></asp:Label>
</asp:Content>
