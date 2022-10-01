% Extraccion de datos

% Añadir al path 1. Generacion de Datos/*

load('DatosColor.mat');
load('DatosFondo.mat');
[F, C, ~] = size(Imagen1);
I = uint8(zeros(F,C,3,5));

I(:,:,:,1) = Imagen1;
I(:,:,:,2) = Imagen2;
I(:,:,:,3) = Imagen3;
I(:,:,:,4) = Imagen4;
I(:,:,:,5) = Imagen5;


% Usando roipoly obtener las áreas correspondientes en caso del fondo y de 
% los datos de color respectivamente

DatosFondo = [];
for i=1:2
   R = I(:,:,1,i);
   G = I(:,:,2,i);
   B = I(:,:,3,i);
   Ib(:,:) = roipoly(I(:,:,:,i));
   DatosFondo = [ DatosFondo; i*ones(size(R(Ib))) R(Ib) G(Ib) B(Ib)];
end

DatosColor = [];
for i=3:5
   R = I(:,:,1,i);
   G = I(:,:,2,i);
   B = I(:,:,3,i);
   Ib(:,:) = roipoly(I(:,:,:,i));
   DatosColor = [ DatosColor; i*ones(size(R(Ib))) R(Ib) G(Ib) B(Ib)];
end


save DatosEntrenamiento DatosColor DatosFondo