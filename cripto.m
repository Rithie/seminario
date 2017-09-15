% 1 Load a color image
% 2 Escolher um canal
% 3 pegar W e H
% 4 carregar texto
% 5 calcular tamanho da imagem
% 6 percorrer cada pixel da imagem enquanto não acabar o texto



img = imread('leno.jpg'); % Carregar a imagem

figure, imshow(img), title('Original image')

imgred = img(:,:,1); % Red channel 1,2,3 -> R,G,B respectivamente
% Green channel
green = img(:,:,2);
% Blue channel 
blue = img(:,:,3); 

red = int16 (imgred);

%figure, imshow(red), title('Red channel')

[width,height] = size(red); % pegar o tamanho da imagem Width e Heigth

texto = "Ateste_para_demonstrar_escondidaASCIIthisOisOaOmessagekkkkelesabeserhahhaha";

img_size = width * height;

n = 0;

for i = 1:width
    for j = 1:height
        if n < length(texto)
            %printf("%d \n", red(i,j))  
            red(i,j) = floor(red(i,j)/52)*52 + ( toascii(texto(n+1))-65);
            n = n + 1;
            %printf("%d \n-------------\n")
            %printf("%d \n", red(i,j))
        end
    end
end

save 'reds.mat' red



%testes
%back_to_original_img = cat(3, red, green, blue);
%save 'backs.mat' back_to_original_img
%imwrite(back_to_original_img,'myGray'); % salva imagem
