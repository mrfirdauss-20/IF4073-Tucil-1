function contrastStretching = contrastStretching (image)
    I_new = zeros(size(image), "uint8");
    for i = 1:size(image, 3)
        temp = image(:, :, i);
        mn = min(temp);
        mx = max(temp);
        I_new(:, :, i) = (temp - mn) .* (255./(mx-mn));
    end

    contrastStretching = I_new;
end