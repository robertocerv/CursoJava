
package datos;
// ESTE SEÑOR TIENE UN CURSO DE JDBC para empresarial, seria bueno llevarlo

import dominio.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ClienteDaoJDBC {
    private static final String SQL_SELECT="SELECT id_cliente, nombre, apellido, email, telefono, saldo "
            + "from cliente";
    private static final String SQL_SELECT_BY_ID="SELECT id_cliente, nombre, apellido, email, telefono, saldo "
            + "from cliente WHERE id_cliente=?";
    private static final String SQL_INSERT="INSERT INTO cliente (nombre, apellido, email, telefono, saldo) "
            + "VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE="UPDATE cliente SET nombre=?, apellido=?, email=?, telefono=?, saldo=? "
            + "FROM cliente WHERE id_cliente=?";
    private static final String SQL_DELETE="DELETE FROM cliente WHERE id_cliente=?";
    
    public List<Cliente> listar(){
        Connection conn=null;
        PreparedStatement stmt=null;
        ResultSet rs=null;
        Cliente cliente=null;
        List<Cliente> clientes=new ArrayList<>();
        try {
            conn=Conexion.getConnection();
            stmt=conn.prepareCall(SQL_SELECT);
            rs=stmt.executeQuery();            
            while (rs.next()) {
                int idCliente=rs.getInt("id_cliente");
                String nombre=rs.getString("nombre");
                String apellido=rs.getString("apellido");
                String email=rs.getString("email");
                String telefono=rs.getString("telefono");
                double saldo=rs.getDouble("saldo");
                cliente=new Cliente(idCliente, nombre, apellido, email, telefono, saldo);
                clientes.add(cliente);
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }finally{
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return clientes;
    }
    
    public Cliente encontrar(Cliente cliente){
        Connection conn=null;
        PreparedStatement stmt=null;
        ResultSet rs=null;
        try {
            conn=Conexion.getConnection();
            stmt=conn.prepareCall(SQL_SELECT_BY_ID);
            stmt.setInt(1, cliente.getIdCliente());
            rs=stmt.executeQuery();            
            rs.absolute(1);//  al encontrar el indice, se posiciona en el primer registro devuelto
            String nombre=rs.getString("nombre");
            String apellido=rs.getString("apellido");
            String email=rs.getString("email");
            String telefono=rs.getString("telefono");
            double saldo=rs.getDouble("saldo");
            
            cliente.setNombre(nombre);
            cliente.setApellido(apellido);
            cliente.setEmail(email);
            cliente.setTelefono(telefono);
            cliente.setSaldo(saldo);
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }finally{
            Conexion.close(rs);
            Conexion.close(stmt);
            Conexion.close(conn);
        }   
        return cliente;
    }
    
    public int insertar(Cliente cliente){
        Connection conn=null;
        PreparedStatement stmt=null;
        int rows=0;
        try {
            conn=Conexion.getConnection();
            stmt=conn.prepareCall(SQL_INSERT);
            stmt.setString(1,cliente.getNombre());
            stmt.setString(2,cliente.getApellido());
            stmt.setString(3,cliente.getEmail());
            stmt.setString(4,cliente.getTelefono());
            stmt.setDouble(5,cliente.getSaldo());
            rows=stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }finally{
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public int actualizar(Cliente cliente){
        Connection conn=null;
        PreparedStatement stmt=null;
        int rows=0;
        try {
            conn=Conexion.getConnection();
            stmt=conn.prepareCall(SQL_UPDATE);
            stmt.setString(1,cliente.getNombre());
            stmt.setString(2,cliente.getApellido());
            stmt.setString(3,cliente.getEmail());
            stmt.setString(4,cliente.getTelefono());
            stmt.setDouble(5,cliente.getSaldo());
            stmt.setInt(6,cliente.getIdCliente());
            rows=stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }finally{
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
    
    public int eliminar(Cliente cliente){
        Connection conn=null;
        PreparedStatement stmt=null;
        int rows=0;
        try {
            conn=Conexion.getConnection();
            stmt=conn.prepareCall(SQL_DELETE);
            stmt.setInt(1,cliente.getIdCliente());
            rows=stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }finally{
            Conexion.close(stmt);
            Conexion.close(conn);
        }
        return rows;
    }
}
