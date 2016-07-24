
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


#固定長ファイル用ソート
#AGRGV[0]:filename(フルパス）
#AGRGV[1]:レコードサイズ
#AGRGV[2]:ソート内容配列

itokcmd(ARGV[0],ARGV[1].to_i,eval(ARGV[2]))

