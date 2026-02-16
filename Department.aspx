<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="Task.Department" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Department Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">




        <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
    Launch demo modal
</button>

                                    <!-- MODAL -->


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">


                <!--    BASIC DESIGN  -->


                <div>
                </div>

                <p>
                    Dept&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>

                <p>
                    Status&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
            
            <br />
            <br />
                </p>

                <p>
                    &nbsp;
                </p>

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primarySave changes</button>
            </div>
        </div>
    </div>
</div>






        <!--    GRID VIEW  -->


<asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover" OnRowDeleting="GridView1_RowDeleting1">



                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>                             
                        </ItemTemplate>
                    </asp:TemplateField>

                    

                    <asp:TemplateField HeaderText="Department">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>                             
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("salary") %>'></asp:Label>                                 
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("pf") %>'></asp:Label>                           
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
