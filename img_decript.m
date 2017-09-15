% carrega a matriz em uma estrutura. 
image = load('reds.mat');

[width,height] = size(image.red);

decrpt = '';
texto = "essaehumamensageescondidaASCIIthisOisOaOmessagekkkkelesabeserhahhaha";
n=0;
for i = 1:width
    for j = 1:height
        if n < length(texto)
            teste =  ( mod(image.red(i,j), 52)) + 65
            decrpt = strcat(decrpt,teste);
            n = n + 1;
                
        end
    end
end

printf("Texto escondido na imagem: %s", decrpt)