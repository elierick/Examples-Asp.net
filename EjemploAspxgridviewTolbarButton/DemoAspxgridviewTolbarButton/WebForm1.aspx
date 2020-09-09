<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DemoAspxgridviewTolbarButton.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function OnToolbarItemClick(s, e) {
            if (IsCustomExportToolbarCommand(e.item.name)) {
                e.processOnServer = true;
                e.usePostBack = true;
            }
        }
        function IsCustomExportToolbarCommand(command) {
            return command == "CustomExportToXLS" || command == "CustomExportToXLSX";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView  runat="server" ID="Grid" ClientInstanceName="grid" 
            Width="100%" DataSourceID="SqlDataSource1" 
            OnToolbarItemClick="Grid_ToolbarItemClick" AutoGenerateColumns="False" 
            Theme="Moderno">
        <Toolbars>
            <dx:GridViewToolbar EnableAdaptivity="True">
                <Items>
                    <dx:GridViewToolbarItem Command="New" />
                    <dx:GridViewToolbarItem Command="Edit" />
                    <dx:GridViewToolbarItem Command="Delete" />
                    <dx:GridViewToolbarItem Command="Refresh" BeginGroup="true" 
                        AdaptivePriority="2" >
                    </dx:GridViewToolbarItem>
                    <dx:GridViewToolbarItem Text="Export to" Image-IconID="actions_download_16x16office2013" BeginGroup="true" AdaptivePriority="1">
                        <Items>
                            <dx:GridViewToolbarItem Command="ExportToPdf" />
                            <dx:GridViewToolbarItem Command="ExportToDocx" />
                            <dx:GridViewToolbarItem Command="ExportToRtf" />
                            <dx:GridViewToolbarItem Command="ExportToCsv" />
                            <dx:GridViewToolbarItem Command="ExportToXls" Text="Export to XLS" />
                            <dx:GridViewToolbarItem Command="ExportToXlsx" Text="Export to XLSX" />
                        </Items>

<Image IconID="actions_download_16x16office2013"></Image>
                    </dx:GridViewToolbarItem>
                     <dx:GridViewToolbarItem BeginGroup="True">
                     <ItemStyle HorizontalAlign="Right" />
                        <Template>
                            <dx:ASPxButtonEdit Theme=Moderno ID="tbToolbarSearch" runat="server" NullText="Search..." Height="100%">
                                <Buttons>
                                    <dx:SpinButtonExtended Image-IconID="find_find_16x16gray" />
                                </Buttons>
                            </dx:ASPxButtonEdit>
                        </Template>
                    </dx:GridViewToolbarItem>
                </Items>
            </dx:GridViewToolbar>
        </Toolbars>
        <Columns>
            <dx:GridViewDataTextColumn FieldName="UserName">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RoleName">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Email" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Area" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Telefono" VisibleIndex="4">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Cargo" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre_Empresa" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Oficina" VisibleIndex="7">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Nombre_Completo" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
        </Columns>
        <EditFormLayoutProperties ColCount="2">
            <Items>
                <dx:GridViewColumnLayoutItem ColumnName="FirstName" />
                <dx:GridViewColumnLayoutItem ColumnName="LastName" />
                <dx:GridViewColumnLayoutItem ColumnName="BirthDate" />
                <dx:GridViewColumnLayoutItem ColumnName="HireDate" />
                <dx:GridViewColumnLayoutItem ColumnName="Title" ColSpan="2" />
                <dx:GridViewColumnLayoutItem ColumnName="Notes" ColSpan="2" />
                <dx:EditModeCommandLayoutItem ColSpan="2" HorizontalAlign="Right" />
            </Items>
        </EditFormLayoutProperties>
        <SettingsSearchPanel CustomEditorID="tbToolbarSearch" Visible="True" />
            <SettingsAdaptivity AdaptivityMode="HideDataCells">
            </SettingsAdaptivity>
            <SettingsPager PageSize="20">
            </SettingsPager>
        <SettingsBehavior AllowFocusedRow="true" />
        <SettingsExport EnableClientSideExportAPI="true" ExcelExportMode="DataAware" />
        <ClientSideEvents ToolbarItemClick="OnToolbarItemClick" />
    </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ServiciosMEMConnectionString %>" 
            SelectCommand="SELECT [UserName], [RoleName], [Email], [Area], [Telefono], [Cargo], [Nombre_Empresa], [Oficina], [Nombre_Completo] FROM [vw_Usuarios]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
