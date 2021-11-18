<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DeleteAppointment.aspx.cs" Inherits="DeleteAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Delete Appointment
    </h2>
    <asp:TextBox ID="TxtAmount" runat="server"></asp:TextBox>
    <asp:Button ID="BtnDelete" runat="server" Text="Delete" OnClick="BtnDelete_Click" />
</asp:Content>

