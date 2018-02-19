WITH Ada.Text_IO;
USE Ada.Text_IO;

with Salas; use Salas;

PROCEDURE Probar_Salas IS
   S: Sala;
BEGIN
   Crear_Sala("  Ava  ", 12,10, S);
   Put_Line("El afaro de la sala es"& Integer'Image(Aforo(S)));
   Put_Line("La sala tiene"&Integer'Image(Plazas_Libres(S))&" libres.");
   Modificar_Pelicula(S, "BlackPanth");
   Put_Line("La pelicula proyectada es "&La_Pelicula(S));
   Vender_Localidades_Contiguas(S,9);
   Vender_Localidades_Contiguas(S,8);
   Vender_Localidades_Contiguas(S,7);
   Vender_Localidades_Contiguas(S,6);
   Vender_Localidades_Contiguas(S,5);
   Vender_Localidades_Contiguas(S,10);
   Vender_Localidades_Contiguas(S,6);
   Vender_Localidades_Contiguas(S,3);
   Vender_Localidades_Contiguas(S,10);
   Vender_Localidades_Contiguas(S,10);
   Vender_Localidades_Contiguas(S,10);
   Vender_Localidades_Contiguas(S,10);
   Vender_Localidades_Contiguas(S,6);
   Vender_Localidades_Contiguas(S,6);
   Put_Line("La sala tiene"&Integer'Image(Plazas_Libres(S))&" libres.");


   Vender_Localidades_Contiguas(S,4);
   Vender_Localidades_Contiguas(S,4);
   Vender_Localidades_Contiguas(S,4);
   Vender_Localidades_Contiguas(S,4);
   Vender_Localidades_Contiguas(S,5);
   Put_Line("La sala tiene"&Integer'Image(Plazas_Libres(S))&" libres.");


   Vender_Localidades_Contiguas(S,1);
   Vender_Localidades_Contiguas(S,2);
   Vender_Localidades_Contiguas(S,4);
   Vender_Localidades_Contiguas(S,1);
   Put_Line("La sala tiene"&Integer'Image(Plazas_Libres(S))&" libres.");

   Vender_Localidades_Contiguas(S,1);
end Probar_Salas;