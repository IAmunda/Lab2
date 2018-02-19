package body Salas is

   ----------------
   -- Crear_Sala --
   ----------------

   procedure Crear_Sala
     (N_Sala: in String;
      N_Filas: in Positive;
      N_Loc_Fila: in Positive;
      Sala: out Salas.Sala)
   is
   begin

      Sala.N_Sala:= N_Sala;
      Sala.N_Filas:= N_Filas;
      Sala.N_Loc_Fila:= N_Loc_Fila;

      for I in Sala.Localidades'range loop
         Sala.Estado:= false;
         end loop;

   end Crear_Sala;

   -----------------
   -- Nombre_Sala --
   -----------------

   function Nombre_Sala (Sala: Salas.Sala) return String is
   begin
      return Sala.N_Sala;
   end Nombre_Sala;

   -----------
   -- Aforo --
   -----------

   function Aforo (Sala: Salas.Sala) return Positive is
   begin
      return Sala.N_Filas*Sala.N_Loc_Fila;
   end Aforo;

   -------------------
   -- Plazas_Libres --
   -------------------

   function Plazas_Libres (Sala: Salas.Sala) return Natural is

      Loc_Libres: Natural:= 0;

   begin

      for I in Sala.Localidades'range loop
         if Sala.Estado = false then
            Loc_Libres:= Loc_Libres + 1;
         end if;
      end loop;
      return Loc_Libres;

   end Plazas_Libres;

   -----------------
   -- La_Pelicula --
   -----------------

   function La_Pelicula (Sala: Salas.Sala) return String is
   begin

      return Sala.Id;

   end La_Pelicula;

   ------------------------
   -- Modificar_Pelicula --
   ------------------------

   procedure Modificar_Pelicula (Sala: in Salas.Sala; Pelicula: in String) is
   Sala_Aux: Salas.Sala:= Sala;
   begin

      Sala_Aux.Id:= Pelicula;

   end Modificar_Pelicula;

   procedure Vender_Localidades_Contiguas(Sala: in out Salas.Sala; Num: in Integer) is
      Cont: Integer:= Num;
   begin

      for I in reverse Sala.Localidades'range loop
         while Num /= 0 loop
            if Sala.Estado=false then
               Sala.Estado:= true;
               Cont:= Cont-1;
            end if;
         end loop;
      end loop;


      end Vender_Localidades_Contiguas;

end Salas;
