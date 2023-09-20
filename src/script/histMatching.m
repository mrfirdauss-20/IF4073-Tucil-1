function histMatching = histMatching (input, reference)
    sz_input = size(input);
    sz_ref = size(reference);
    if(sz_input == sz_ref)
        [x,y,colors] = size(input);
        input_histeq = histEqualizer(input);
        ref_histeq = histEqualizer(reference);

        for c=1:colors
            inv_hist = zeros(1,256);
            for i=1:256
                minval = abs(input_histeq(i) - ref_histeq(1));
                for j=1:256
                    if(abs(input_histeq(i) - ref_histeq(j)) < minval)
                        minval = abs(input_histeq(i) - ref_histeq(j));
                        inv_hist(i) = j;
                    end
                end
            end
            input(:,:,c) = inv_hist(input(:,:,c));
        end

        histMatching = input
    else
        disp("Ukuran gambar input dan gambar acuan berbeda.")
    end
end 