function powerTransform = powerTransform(image, c, g)
    image = im2double(image);
    s = zeros(size(image), 'double');
    [x,y] = size(image);
    for i = 1:x
        for j = 1:y
            s(i,j) = c*(image(i,j)^g);
        end
    end
    powerTransform = s;
end