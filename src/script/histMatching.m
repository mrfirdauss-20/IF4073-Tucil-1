function histMatching = histMatching (input, reference)
    sz_input = size(input);
    sz_ref = size(reference);
    if(sz_input == sz_ref)
        [x,y,colors] = size(input);
        
        disp(colors)
        % Untuk masing-masing warna
        for c=1:colors
            input_histeq = zeros(1,256);
            ref_histeq = zeros(1,256);
            one_color_image = input(:,:,c);
            one_color_ref = reference(:,:,c);
            % Melakukan perataan histogram untuk citra input
            hist = zeros(1,256);
            for i = 1:x
                for j = 1:y
                    hist(one_color_image(i,j)+1) = hist(one_color_image(i,j)+1) + 1;
                end
            end
            
            ref_hist = zeros(1,256);
            for i = 1:x
                for j = 1:y
                    ref_hist(one_color_ref(i,j)+1) = hist(one_color_ref(i,j)+1) + 1;
                end
            end
            input_histeq(1) = hist(1);
            for i=2:256
                input_histeq(i) = input_histeq(i-1) + hist(i);
            end 
            input_histeq = floor(255*input_histeq);
            % Melakukan perataan histogram untuk citra referensi
            ref_histeq(1) = ref_hist(1);
            for i=2:256
                ref_histeq(i) = ref_histeq(i-1) + ref_hist(i);
            end 
            ref_histeq = floor(255*ref_histeq);
            inv_hist = zeros(1,256);
            % Mencari Invers Histogram dari citra referensi
            for i=1:256
                minval = abs(input_histeq(i) - ref_histeq(1));
                for j=1:256
                    if(abs(input_histeq(i) - ref_histeq(j)) < minval)
                        minval = abs(input_histeq(i) - ref_histeq(j));
                        inv_hist(i) = j;
                    end
                end
            end
            for i=1:x
                for j=1:y
                    input(i,j,c) = inv_hist(input(i,j,c));
                end
            end
        end

        histMatching = input
    else
        disp("Ukuran gambar input dan gambar acuan berbeda.")
    end
end 