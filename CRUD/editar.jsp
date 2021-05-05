<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Datos</title>
        <link rel="stylesheet" href="estilos.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav>
                <a href="index.html">Inicio</a>
                <a href="sesion.html">Iniciar Sesion</a>
                <a href="#">Carrito de Compras</a>
                <a href="consulta.jsp" >Consulta General Acerca de las Cuentas</a>
            </nav>
            <section class="textos-header">
                <h1>Edita tus Datos</h1>
                <h2>Todos cometemos errores y pensando en nuestros helados, no te podemos culpar, no te preocupes corrige lo necesario</h2>
            </section>
            <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
        </header>
        <h1>Tabla de Actualización de Datos</h1>
        <div class="contenedor">
            <form method="post" name="formularioactualizar"  action="actualizar.jsp">
                <table border="2" >
                    <%
                        Connection con = null;
                        Statement set = null;
                        ResultSet rs = null;
                        String url, userName, password, driver;
                        url = "jdbc:mysql://localhost/examen";
                        userName = "root";
                        password = "3123";
                        driver = "com.mysql.jdbc.Driver";
                        try{
                            Class.forName(driver);
                            con = DriverManager.getConnection(url, userName, password);
                            try{
                                int id = Integer.parseInt(request.getParameter("id"));
                                String q = "select * from mregistro where id_usu = "+id+"";
                                set = con.createStatement();
                                rs = set.executeQuery(q);
                                while(rs.next()){
                    %>
                        <tr>
                            <td>ID</td>
                            <td> <input type="hidden" name="id" value="<%=rs.getInt("id_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Nombre:</td>
                            <td> <input type="text" name="nombre" value="<%=rs.getString("nom_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Apellido Paterno:</td>
                            <td> <input type="text" name="apellidoP" value="<%=rs.getString("apat_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Apellido Materno:</td>
                            <td> <input type="text" name="apellidoM" value="<%=rs.getString("amat_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Edad:</td>
                            <td> <input type="text" name="edad" value="<%=rs.getString("edad_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Fecha de Nacimiento:</td>
                            <td> <input type="text" name="fechaN" value="<%=rs.getString("fechanac_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Domicilio:</td>
                            <td> <input type="text" name="domicilio" value="<%=rs.getString("dom_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Telefono Personal:</td>
                            <td> <input type="text" name="telP" value="<%=rs.getString("telp_usu")%>" > </td>
                        </tr>
                        <tr>
                            <td>Celular:</td>
                            <td> <input type="text" name="cel" value="<%=rs.getString("cel_usu")%>" > </td>
                        </tr>


                    <%

                        }
                            rs.close();
                            set.close();

                        }catch(SQLException ed){
                            System.out.println("Error al consultar los datos");
                            System.out.println(ed.getMessage());
                    %>
                    <tr>
                        <td>ID</td>
                        <td> <input type="hidden" name="id2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Nombre:</td>
                        <td> <input type="text" name="nombre2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Apellido Paterno:</td>
                        <td> <input type="text" name="apellidoP2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Apellido Materno:</td>
                        <td> <input type="text" name="apellidoM2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Edad:</td>
                        <td> <input type="text" name="edad2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Fecha de Nacimiento:</td>
                        <td> <input type="text" name="fechaN2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Domicilio:</td>
                        <td> <input type="text" name="dom2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Telefono Personal:</td>
                        <td> <input type="text" name="telP2" value="" > </td>
                    </tr>
                    <tr>
                        <td>Celular:</td>
                        <td> <input type="text" name="cel2" value="" > </td>
                    </tr>

                    <%

                        }
                            con.close();

                        }catch(Exception e){
                            System.out.println("Error al conectar con la bd");
                            System.out.println(e.getMessage());
                            System.out.println(e.getStackTrace());
                    %>

                        <h1>Sitio en construcción</h1>

                    <%

                        }

                    %>  
                </table>
                    <input type="submit" value="Actualizar Datos" >
                    <input type="reset" value="Borrar Datos" >
            </form>
        </div>
        <footer>
            <div class="contenedor-footer">
                <div class="content-foo">
                    <h4>Andrade Aguilar Arturo Imanol</h4>
                    <p>Arthur18aa</p>
                </div>
                <div class="content-foo">
                    <h4>Juarez Diaz Isaac Uriel</h4>
                    <p>Isaaacu23</p>
                </div>
                <div class="content-foo">
                    <h4>López Bastida Cesar Ricardo</h4>
                    <p>CesaRLB</p>
                </div>
                <div class="content-foo">
                    <h4>Castilla García Alejandro</h4>
                    <p>C4stilla</p>
                </div>
            </div>
            <h2 class="titulo-final">&copy; C4stilla Design | Castilla García Alejandro</h2>
        </footer>
    </body>
</html>
