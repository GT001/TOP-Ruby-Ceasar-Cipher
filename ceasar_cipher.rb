def caesar_cipher(text, shift)
	print text + " Shifted by " + shift.to_s + ": "
	internal_shift = shift % 26
	for i in  0..(text.length-1)
		if (text[i].ord.to_i >= 65 && text[i].ord.to_i <= 90) then
			base = 65;
			text[i] = (base +(((text[i].ord.to_i + internal_shift)%base)%26)).chr
		elsif (text[i].ord.to_i >= 97 && text[i].ord.to_i <= 122) then
			base = 97
			text[i] = (base +(((text[i].ord.to_i + internal_shift)%base)%26)).chr
		end
	end
	puts text
end
caesar_cipher("ABCD", 2)
caesar_cipher("abcd", 2)
caesar_cipher("wxyz", 2)
caesar_cipher("WXYZ", 2)
caesar_cipher("ABCD", 22)
caesar_cipher("abcd", 22)
caesar_cipher("wxyz", 22)
caesar_cipher("WXYZ", 55)
caesar_cipher("What a string!", 5)