function logTransform = logTransform( image, c, r )
    image = im2double(image);
    s = zeros(size(image), 'double');
    [x,y] = size(image);
    for i = 1:x
        for j = 1:y
            s(i,j) = c*log(r+image(i,j));
        end
    end
    logTransform = s;
end