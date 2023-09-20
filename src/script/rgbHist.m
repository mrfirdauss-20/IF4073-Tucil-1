function rgbHist(image)
    redMatrix = image(:,:,1);
    greenMatrix = image(:,:,2);
    blueMatrix = image(:,:,3);
    title('Image with Hist', 'FontSize', 20);
    subplot(2,2,1);
    % Histogram merah
    r = gsHist(redMatrix);
    set(r, 'FaceColor', 'r');
    title('Red Histogram', 'FontSize', 10);
    subplot(2,2,2);
    % Histogram hijau
    g = gsHist(greenMatrix);
    set(g, 'FaceColor', 'g');
    title('Green Histogram', 'FontSize', 10);
    subplot(2,2,3);
    % Histogram biru
    b = gsHist(blueMatrix);
    set(b, 'FaceColor', 'b');
    title('Blue Histogram', 'FontSize', 10);
    subplot(2,2,4);
    imshow(image);
end