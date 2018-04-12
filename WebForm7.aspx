<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="Welgate_Organic_Projects.WebForm7" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="867px">
            <LocalReport ReportPath="Report7.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet7" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="Welgate_Organic_Projects.DataSet7TableAdapters.Purchase_Order_tblTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_Purchase_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Supplier" Type="String" />
                <asp:Parameter Name="Payment_Terms" Type="String" />
                <asp:Parameter Name="Quantity" Type="Double" />
                <asp:Parameter Name="Price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Date" Type="DateTime" />
                <asp:Parameter Name="Supplier" Type="String" />
                <asp:Parameter Name="Payment_Terms" Type="String" />
                <asp:Parameter Name="Quantity" Type="Double" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Original_Purchase_Id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    </div>
    </form>
</body>
</html>
