def ceasar_cipher(text, shift)
	print text + " Shifted by " + shift.to_s + ": "
	internal_shift = shift % 26
	for i in  0..(text.length-1)
		if (text[i].ord.to_i >= 65 && text[i].ord.to_i <= 90) then
			base = 65;
		elsif (text[i].ord.to_i >= 97 && text[i].ord.to_i <= 122) then
			base = 97
		end
		text[i] = (base +(((text[i].ord.to_i + internal_shift)%base)%26)).chr
	end
	puts text
end
ceasar_cipher("ABCD", 2)
ceasar_cipher("abcd", 2)
ceasar_cipher("wxyz", 2)
ceasar_cipher("WXYZ", 2)
ceasar_cipher("ABCD", 22)
ceasar_cipher("abcd", 22)
ceasar_cipher("wxyz", 22)
ceasar_cipher("WXYZ", 55)