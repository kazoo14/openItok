
def itokcmd(filename,recsize,sortKeyArray)
	File.open(filename,"rb") do |io|
		dataarray = []
		while  data = io.read(recsize)
			dataarray<<data.slice(
		end
		
		dataarray.sort!{|a,b| makesortkey(sortKeyArray,a)<=>makesortkey(sortKeyArray,b)}
		
		editdata=''
		for editdata in dataarray do 
		  print editdata
		end		
	end
end
def makesortkey(sortKeyArray,bytearray)
	sortkeyarea=''
	for sortkey in sortKeyArray do
		sortkeyarea <<bytearray.slice(sortkey[0].to_i,sortkey[1].to_i)
	end
	return sortkeyarea
end


#�Œ蒷�t�@�C���p�\�[�g
#AGRGV[0]:filename(�t���p�X�j
#AGRGV[1]:���R�[�h�T�C�Y
#AGRGV[2]:�\�[�g���e�z��

itokcmd(ARGV[0],ARGV[1].to_i,eval(ARGV[2]))

