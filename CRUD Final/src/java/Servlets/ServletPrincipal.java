/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;
//Librerias de conexion con BD
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//Librerias normales
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


//Modelos
import  Models.ViewModelEmpleados;
import Models.ViewModelClientes;
import Models.ViewModelLibros;
import Models.ViewModelEditoriales;
import Models.ViewModelPrestamos;
/**
 *
 * @author Alex
 */
public class ServletPrincipal extends HttpServlet {
    
    
    //Estableciendo conexion con la BD
    private final String usuario = "administradoresLogin";
    private final String contrasenia = "contraAdmi";
    private final String servidor = "DESKTOP-IFNI771";
    private final String bd = "LibreriaB";
    
    String url = "jdbc:sqlserver://" 
            + servidor 
            + ";databaseName=" + bd 
            + ";user=" + usuario 
            + ";password=" + contrasenia 
            + ";encrypt=false;trustServerCertificate=false;";
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPrincipal</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPrincipal at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    
    //FUNCIONES DE CRUD SOBRE LA BASE DE DATOS
    //Funciones de lectura de tablas (SELECT)
    public void mostrarEmpleados(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM empleados";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEmpleados> listaEmpleados = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEmpleados empleado = new ViewModelEmpleados();
                    empleado.setIdEmpleado(rs.getInt("idEmpleado"));
                    empleado.setNombres(rs.getString("nombres"));
                    empleado.setApellidos(rs.getString("apellidos"));
                    empleado.setCargo(rs.getString("cargo"));
                    empleado.setTelefono(rs.getString("telefono"));
                    empleado.setCorreo(rs.getString("correo"));
                    empleado.setIdDireccion(rs.getInt("IdDireccion"));
                    empleado.setIdCargoEmpleado(rs.getInt("IdCargoEmpleado"));
                    listaEmpleados.add(empleado);
                    System.out.print(listaEmpleados);
                }         
                                
                request.setAttribute("listaEmpleados", listaEmpleados);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarClientes(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM clientes";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelClientes> listaClientes = new ArrayList<>();
                while (rs.next()) {
                    ViewModelClientes cliente = new ViewModelClientes();
                    cliente.setIdCliente(rs.getInt("idCliente"));
                    cliente.setNombre(rs.getString("nombre"));
                    cliente.setApellido(rs.getString("apellido"));
                    cliente.setCorreo(rs.getString("correo"));
                    cliente.setTelefono(rs.getString("telefono"));
                    cliente.setIdDireccion(rs.getInt("IdDireccion"));
                    listaClientes.add(cliente);
                    System.out.print(listaClientes);
                }         
                                
                request.setAttribute("listaClientes", listaClientes);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
      
    public void mostrarLibros(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM libros";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelLibros> listaLibros = new ArrayList<>();
                while (rs.next()) {
                    ViewModelLibros libros = new ViewModelLibros();
                    libros.setIdLibro(rs.getInt("idLibro"));
                    libros.setTitulo(rs.getString("titulo"));
                    libros.setIsbn(rs.getString("isbn"));
                    libros.setIdAutor(rs.getInt("idAutor"));
                    libros.setIdGenero(rs.getInt("idGenero"));
                    libros.setIdEditorial(rs.getInt("IdEditorial"));
                    listaLibros.add(libros);
                    System.out.print(listaLibros);
                }         
                                
                request.setAttribute("listaLibros", listaLibros);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarEditoriales(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM editoriales";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelEditoriales> listaEditoriales = new ArrayList<>();
                while (rs.next()) {
                    ViewModelEditoriales editoriales = new ViewModelEditoriales();
                    editoriales.setIdEditorial(rs.getInt("idEditorial"));
                    editoriales.setNombre(rs.getString("nombre"));
                    editoriales.setPais(rs.getString("pais"));
                    listaEditoriales.add(editoriales);
                    System.out.print(listaEditoriales);
                }         
                                
                request.setAttribute("listaEditoriales", listaEditoriales);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public void mostrarPrestamos(HttpServletRequest request, HttpServletResponse response) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

            try(Connection conn = DriverManager.getConnection(url)){
                request.setAttribute("mensaje_conexion", "Ok!");
                String sqlQuery = "SELECT * FROM prestamos";
                PreparedStatement pstmt = conn.prepareStatement(sqlQuery);
                ResultSet rs = pstmt.executeQuery();
                ArrayList<ViewModelPrestamos> listaPrestamos = new ArrayList<>();
                while (rs.next()) {
                    ViewModelPrestamos prestamos = new ViewModelPrestamos();
                    prestamos.setIdPrestamo(rs.getInt("idPrestamo"));
                    prestamos.setFechaPrestamo(rs.getDate("fechaPrestamo"));
                    prestamos.setFechaEntrega(rs.getDate("fechaEntrega"));
                    prestamos.setIdCliente(rs.getInt("idCliente"));
                    prestamos.setIdEjemplar(rs.getInt("idEjemplar"));
                    listaPrestamos.add(prestamos);
                    System.out.print(listaPrestamos);
                }         
                                
                request.setAttribute("listaPrestamos", listaPrestamos);

            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.setAttribute("mensaje_conexion", ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    
    //Funciones de escritura en tablas (INSERT)
    public void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String cargo = request.getParameter("cargo");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String IdDireccion = request.getParameter("IdDireccion");
        String IdCargoEmpleado = request.getParameter("IdCargoEmpleado");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into empleados values (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombres);
                pstmt.setString(2, apellidos);
                pstmt.setString(3, cargo);
                pstmt.setString(4, telefono);
                pstmt.setString(5, correo);
                pstmt.setString(6, IdDireccion);
                pstmt.setString(7, IdCargoEmpleado);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
       
    public void agregarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("dui");
        String telefono = request.getParameter("telefono");
        String IdDireccion = request.getParameter("IdDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into clientes values (?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombre);
                pstmt.setString(2, apellido);
                pstmt.setString(3, correo);
                pstmt.setString(4, telefono);
                pstmt.setString(5, IdDireccion);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarLibro(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los empleados es autoincrementable
        String titulo = request.getParameter("titulo");
        String isbn = request.getParameter("isbn");
        String idAutor = request.getParameter("idAutor");
        String idGenero  = request.getParameter("idGenero");
        String idEditorial = request.getParameter("idEditorial");


        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into libros values (?, ?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, titulo);
                pstmt.setString(2, isbn);
                pstmt.setString(3, idAutor);
                pstmt.setString(4, idGenero);
                pstmt.setString(5, idEditorial);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarEditorial(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los laboratorios es autoincrementable
        String nombre = request.getParameter("nombre");
        String pais = request.getParameter("pais");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into editoriales values (?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, nombre);
                pstmt.setString(2, pais);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void agregarPrestamo(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        //El ID de los proveedores es autoincrementable
        String fechaPrestamo = request.getParameter("fechaPrestamo");
        String fechaEntrega = request.getParameter("fechaEntrega");
        String idCliente = request.getParameter("idCliente");
        String idEjemplar = request.getParameter("idEjemplar");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "insert into prestamos values (?, ?, ?, ?)";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fechaPrestamo);
                pstmt.setString(2, fechaEntrega);
                pstmt.setString(3, idCliente);
                pstmt.setString(4, idEjemplar);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    
    //Funciones de actualizacion de registros (UPDATE)
    public void modificarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idEmpleado = request.getParameter("idEmpleado");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String cargo = request.getParameter("cargo");
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        String IdDireccion = request.getParameter("IdDireccion");
        String IdCargoEmpleado = request.getParameter("IdCargoEmpleado");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update empleados set "
                 + "nombres='"+nombres+"', "
                 + "apellidos='"+apellidos+"', "
                 + "cargo='"+cargo+"', "
                 + "telefono='"+telefono+"', "
                 + "correo='"+correo+"', " 
                 + "IdDireccion='"+IdDireccion+"', "
                 + "IdCargoEmpleado='"+IdCargoEmpleado+"' " 
                 + "where idEmpleado='"+idEmpleado+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarCliente(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idCliente = request.getParameter("idCliente");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String IdDireccion = request.getParameter("IdDireccion");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update clientes set "
                 + "nombre='"+nombre+"', "
                 + "apellido='"+apellido+"', "
                 + "correo='"+ correo +"', "
                 + "telefono='"+telefono+"', "
                 + "IdDireccion='"+IdDireccion+"', "
                 + "where idCliente='"+idCliente+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
     
    public void modificarLibro(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idLibro = request.getParameter("idLibro");
        String titulo = request.getParameter("titulo");
        String isbn = request.getParameter("isbn");
        String idAutor = request.getParameter("idAutor");
        String idGenero = request.getParameter("idGenero");
        String idEditorial = request.getParameter("idEditorial");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update libros set "
                 + "titulo='"+titulo+"', "
                 + "isbn='"+isbn+"', "
                 + "idAutor='"+idAutor+"', "
                 + "idGenero='"+ idGenero +"', "
                 + "idEditorial='"+ idEditorial+"', "
                 + "where idLibro='"+idLibro+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void modificarEditorial(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idEditorial = request.getParameter("idEditorial");
        String nombre = request.getParameter("nombre");
        String pais = request.getParameter("pais");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update editoriales set "
                 + "nombre='"+nombre +"', "
                 + "pais='"+ pais +"', "
                 + "where idEditorial='"+idEditorial+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
     
    public void modificarPrestamo(HttpServletRequest request, HttpServletResponse response) {
        //CAPTURA DE VARIABLES
        String idPrestamo = request.getParameter("idPrestamo");
        String fechaPrestamo = request.getParameter("fechaPrestamo");
        String fechaEntrega = request.getParameter("fechaEntrega");
        String idCliente = request.getParameter("idCliente");
        String idEjemplar = request.getParameter("idEjemplar");

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                
                String sql = "update prestamos set "
                 + "fechaPrestamo='"+ fechaPrestamo+"', "
                 + "fechaEntrega='"+ fechaEntrega +"', "
                 + "idCliente='"+ idCliente +"', "
                 + "idEjemplar='"+ idEjemplar +"', "
                 + "where idPrestamo='"+idPrestamo+"'";
                
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    
    
    //Funciones de eliminacion de registros (DELETE)
    public void eliminarEmpleado(HttpServletRequest request, HttpServletResponse response) {
        String idEmpleado = request.getParameter("idEmpleado");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from empleados where idEmpleado='" + idEmpleado + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarCliente(HttpServletRequest request, HttpServletResponse response) {
        String idCliente = request.getParameter("idCliente");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from clientes where idCliente='" + idCliente + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarLibro(HttpServletRequest request, HttpServletResponse response) {
        String idLibro = request.getParameter("idLibro");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from libros where idLibro='" + idLibro + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarEditorial(HttpServletRequest request, HttpServletResponse response) {
        String idEditorial = request.getParameter("idEditorial");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from editoriales where idEditorial='" + idEditorial + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    public void eliminarPrestamo(HttpServletRequest request, HttpServletResponse response) {
        String idPrestamo = request.getParameter("idPrestamo");
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            try (Connection conn = DriverManager.getConnection(url)) {
                request.setAttribute("mensaje_conexion", "Ok!");
                String sql = "delete from prestamos where idPrestamo='" + idPrestamo + "'";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                int registros = pstmt.executeUpdate();
                if (registros > 0) {
                    request.getSession().setAttribute("exito", true);
                } else {
                    request.getSession().setAttribute("exito", false);
                }
            }
        } catch (SQLException | ClassNotFoundException ex) {
            request.getSession().setAttribute("exito", false);
            ex.printStackTrace();
        }
    }
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion == null) {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        } else if (accion.equals("Login")) {
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        } else if (accion.equals("GestionarEmpleados")) {
            mostrarEmpleados(request, response);
            request.getRequestDispatcher("/GestionarEmpleados.jsp").forward(request, response);
        } else if (accion.equals("GestionarClientes")) {
            mostrarClientes(request, response);
            request.getRequestDispatcher("/GestionarClientes.jsp").forward(request, response);
        } else if (accion.equals("GestionarLibros")) {
            mostrarLibros(request, response);
            request.getRequestDispatcher("/GestionarLibros.jsp").forward(request, response);
        }else if (accion.equals("GestionarEditoriales")) {
            mostrarEditoriales(request, response);
            request.getRequestDispatcher("/GestionarEditoriales.jsp").forward(request, response);
        }else if (accion.equals("GestionarPrestamos")) {
            mostrarPrestamos(request, response);
            request.getRequestDispatcher("/GestionarPrestamos.jsp").forward(request, response);
        }else if (accion.equals("AgregarEmpleado")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarEmpleado.jsp").forward(request, response);
        }else if (accion.equals("AgregarCliente")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarCliente.jsp").forward(request, response);
        }else if (accion.equals("AgregarLibro")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarLibro.jsp").forward(request, response);
        }else if (accion.equals("AgregarEditorial")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarEditorial.jsp").forward(request, response);
        }else if (accion.equals("AgregarPrestamo")) {
            if (request.getSession().getAttribute("exito") != null) {
                request.setAttribute("exito", request.getSession().getAttribute("exito"));
                request.getSession().removeAttribute("exito");
            }
            request.getRequestDispatcher("AgregarPrestamo.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (accion.equals("Login")) {
            String usuario = request.getParameter("tfUsuario");
            String contrasenia = request.getParameter("tfContrasenia");

            try (PrintWriter print = response.getWriter()) {
                if (usuario.equals("admin") && contrasenia.equals("root")) {
                    request.getRequestDispatcher("/PanelAdministrador.jsp").forward(request, response);

                } else {
                    print.println("<!DOCTYPE html>");
                    print.println("<html>");
                    print.println("<head>");
                    print.println("<title>Login Libreria</title>");
                    print.println("</head>");
                    print.println("<body>");
                    print.println("<h2>Error: La contraseña o el usuario son erróneos</h2>");
                    print.println("</body>");
                    print.println("</html>");
                }
            }
        }
        
        
        //CAPTURA DE DATOS ENVIADOS POR POST
        if (accion.equals("AgregarEmpleado")){
            agregarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEmpleado");
        } else if (accion.equals("ModificarEmpleado")){
            modificarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarEmpleado");
        } else if (accion.equals("EliminarEmpleado")){
            eliminarEmpleado(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarEmpleado");
        } else if (accion.equals("AgregarCliente")){
            agregarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarCliente");
        } else if (accion.equals("ModificarCliente")){
            modificarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarCliente");
        } else if (accion.equals("EliminarCliente")){
            eliminarCliente(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarCliente");
        } else if (accion.equals("AgregarLibro")){
            agregarLibro(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarLibro");
        } else if (accion.equals("ModificarLibro")){
            modificarLibro(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarLibro");
        } else if (accion.equals("EliminarLibro")){
            eliminarLibro(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarLibro");
        } else if (accion.equals("AgregarEditorial")){
            agregarEditorial(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarEditorial");
        } else if (accion.equals("ModificarEditorial")){
            modificarEditorial(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarEditorial");
        } else if (accion.equals("EliminarEditorial")){
                eliminarEditorial(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarEditorial");
        }  else if (accion.equals("AgregarPrestamo")){
            agregarPrestamo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=AgregarPrestamo");
        } else if (accion.equals("ModificarPrestamo")){
            modificarPrestamo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=ModificarPrestamo");
        } else if (accion.equals("EliminarPrestamo")){
            eliminarPrestamo(request, response);
            response.sendRedirect(request.getContextPath() + "/ServletPrincipal?accion=EliminarPrestamo");
        } 
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
