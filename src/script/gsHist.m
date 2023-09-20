function gsHist = gsHist(image)
    [x,y] = size(image);
    matrix = zeros(1,256);
    for i = 1:x
        for j = 1:y
            matrix(round(image(i,j))+1) = matrix(round(image(i,j))+1) + 1;
        end
    end
    xBar = 0 : 255;
    gsHist = bar(xBar,matrix);
end

