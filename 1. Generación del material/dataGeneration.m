% Archio para la generacion del material
datos = imaqhwinfo('winvideo');

video = videoinput('winvideo',1,'YUY2_320x240');
video.ReturnedColorSpace = 'grayscale'; % tratamos imagenes como rgb
preview(video)

Ic = getsnapshot(video);
imshow(Ic)


%% Leer un Archivo de Video

video = VideoReader('Video.avi');
get(video)
NumeroFrames = video.NumFrames;
NumFilasFrame = video.Height;
NumeroColumnasFrame = video.Width;
FPS = video.FrameRate;
Numero_de_Frame = 10;
I = read(video,Numero_de_Frame); %% Guardo en I el frame 10 del video


I = read(video,190); % 120 , 70,  10 (Fondo) , 190, 20(Fondo con manoo)
imwrite(I,'Imagen5.jpg');
% imshow(I)


Imagen1 = imread('Imagen1.jpg');
Imagen2 = imread('Imagen2.jpg');
Imagen3 = imread('Imagen3.jpg');
Imagen4 = imread('Imagen4.jpg');
Imagen5 = imread('Imagen5.jpg');
[F, C, ~] = size(Imagen1);

save  DatosColor Imagen3 Imagen4 Imagen5
save  DatosFondo Imagen1 Imagen2
