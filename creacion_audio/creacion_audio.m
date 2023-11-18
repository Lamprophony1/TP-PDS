% Carga el archivo de audio original
[originalAudio, Fs] = audioread('test.wav');

% Determinar si la se�al es mono o est�reo
[numMuestras, numCanales] = size(originalAudio);

% Generar ruido aleatorio
% El ruido se genera con una amplitud que es una fracci�n del m�ximo
% valor en la se�al original, ajusta este valor seg�n sea necesario
amplitudRuido = 0.1 * max(abs(originalAudio(:)));
ruido = amplitudRuido * randn(numMuestras, numCanales);

% Agrega ruido a la se�al original
audioConRuido = originalAudio + ruido;

% Guarda el audio con ruido en un nuevo archivo
audiowrite('C:\Users\RafaG\Desktop\DSP (Yessica)\TP Final\lms\creacion_audio\audioConRuido.wav', audioConRuido, Fs);

% Guarda solo el ruido en otro archivo
audiowrite('C:\Users\RafaG\Desktop\DSP (Yessica)\TP Final\lms\creacion_audio\soloRuido.wav', ruido, Fs);

sound(audioConRuido, Fs);
