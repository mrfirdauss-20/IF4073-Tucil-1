function rgbHist(image)
    redMatrix = image(:,:,1);
    greenMatrix = image(:,:,2);
    blueMatrix = image(:,:,3);

    subplot(2,2,1);
    r = gsHist(redMatrix);
    set(r, 'FaceColor', 'r');
    title('Red Histogram', 'FontSize', 10);
    subplot(2,2,2);
    g = gsHist(greenMatrix);
    set(g, 'FaceColor', 'g');
    title('Green Histogram', 'FontSize', 10);
    subplot(2,2,3);
    b = gsHist(blueMatrix);
    set(b, 'FaceColor', 'b');
    title('Blue Histogram', 'FontSize', 10);
end