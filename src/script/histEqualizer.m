function histEqualizer = histEqualizer(image)
    [x,y,z] = size(image);
    hist = zeros(256, z);
    newHist = zeros(256, 1);
    for i = 1: size(image,3)
        hist(:,i) = transpose(gsHist(image(:,:,i)).YData);
    end
    sum = 0;
    for i = 1:256
        for j = 1: size(image, 3)
            sum = sum + hist(i,j);
        end
        newHist(i) = round(256*(sum/(x*y)/z));
    end
    disp(y)

    for i = 1: z
        for j = 1:x
            for k = 1:y
                image(j,k,i) = newHist(image(j,k,i));
            end
        end
    end

    histEqualizer = image;
end