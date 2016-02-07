
<%@ Page Language="C#" %>
<html>
<head>
  <title>Formularios de Autentificacion - Pagina Principal</title>
</head>

<script runat="server">
  void Page_Load(object sender, EventArgs e)
  {
    Welcome.Text = "Hola, " + Context.User.Identity.Name;
  }

  void Signout_Click(object sender, EventArgs e)
  {
    FormsAuthentication.SignOut();
    Response.Redirect("Login.aspx");
  }
</script>

<body>
  <h3>
      Ejemplo de formularios de autentificación C#</h3>
  <asp:Label ID="Welcome" runat="server" />
  <form id="Form1" runat="server">
    <asp:Button ID="Submit1" OnClick="Signout_Click" 
       Text="Cerrar Sessión" runat="server" /><p>
  </form>
</body>
</html>