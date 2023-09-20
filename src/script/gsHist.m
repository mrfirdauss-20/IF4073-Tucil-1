function gsHist = gsHist(image)
    % Menentukan histogram pada citra hitam putih
    [x,y] = size(image);
    matrix = zeros(1,256);
    % Untuk menghitung jumlah pixel berwarna tertentu (matrix counter)
    for i = 1:x
        for j = 1:y
            matrix(round(image(i,j))+1) = matrix(round(image(i,j))+1) + 1;
        end
    end
    xBar = 0 : 255;
    gsHist = bar(xBar,matrix);
end

