function powerTransform = powerTransform(image, c, g)
    % Melakukan transformasi dengan fungsi y = cx^g
    image = im2double(image);
    s = zeros(size(image), 'double');
    [x,y] = size(image);
    % Melakukan fungsi di atas untuk tiap piksel
    for i = 1:x
        for j = 1:y
            s(i,j) = c*(image(i,j)^g);
        end
    end
    powerTransform = s;
end