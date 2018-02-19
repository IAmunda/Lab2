
package Salas is

   type Sala is private;

   procedure Crear_Sala(N_Sala: in String;
                        N_Filas: in Positive; N_Loc_Fila: in Positive;
                        Sala: out Salas.Sala);

   function  Nombre_Sala(Sala: Salas.Sala) return String;

   function Aforo(Sala: Salas.Sala) return Positive;

   function Plazas_Libres(Sala: Salas.Sala) return Natural;

   function La_Pelicula(Sala: Salas.Sala) return String;

   procedure Modificar_Pelicula(Sala: in Salas.Sala; Pelicula: in String);

   procedure Vender_Localidades_Contiguas(Sala: in out Salas.Sala; Num: in Integer);

private


   type Distribucion is array(1..25,1..25) of Positive;
   type Sala is record
      N_Sala: String(1..7);
      Id: String(1..10);
      N_Loc_Libres : Natural;
      N_Filas: Positive range 1..25;
      N_Loc_Fila: Positive range 1..25;
      Localidades: Distribucion;
      Estado: Boolean;
   end record;
end Salas;
