#!# bin# bash

# -----------------------------------------------
# Script FFmpeg - Edição de Vídeos e Conversões
# -----------------------------------------------

# Descrição: Este script contém comandos FFmpeg para diversas operações, incluindo edição, conversões e efeitos visuais.

(for %i in (*.mp4) do @echo file '%i') > list.txt


ffmpeg -loop 1 -i image.png -i video.mp4 -filter_complex "[1:v]scale=400:-1[fg];[0:v][fg]overlay=(W-w)# 2:(H-h)# 2:shortest=1" output.mp4


ffmpeg -i out.mp4 -i a1.mp4 -filter_complex "[1:v]scale=400:-1[fg];[0:v][fg]overlay=(W-w)# 2:(H-h)# 2:shortest=1" output.mp4


-an no audio
-i input file
-vn no video
-ac audio channel
-ar audio sample rate
-ab audio bitrate
-f output format

# redimensionar video
ffmpeg -i mpt.mp4 -vf scale=-1:720 -c:v copy -crf 0 -preset veryslow -c:a copy MyMovie_720p.mp4
ffmpeg -i mpt.mp4 -vf scale=1280:720 -c:v copy -c:a copy odf.mp4

# virar vídeo horizontalmente
ffmpeg -i video.mp4 -vf hflip -c:a copy OUTPUT.mp4

# virar vídeo vertifcalmente
ffmpeg -i INPUT.mp4 -vf vflip -c:a copy OUTPUT.mp4

# colocando dois vídeo lado a lado
ffmpeg -i v1.mp4 -i v2.mp4 -filter_complex "[0:v][1:v]hstack=inputs=2[v]; [0:a][1:a]amerge[a]" -map "[v]" -map "[a]" -ac 2 output.mp4

# Colocar legendas em arquivos MP4 (escondidas)
ffmpeg -i video.mp4 -i input.srt -c copy -c:s mov_text outfile.mp4

# Embutir legendas em arquivos MP4 (amostra)
ffmpeg -i video.mp4 -filter_complex subtitles=input.srt -c:a copy output.mp4


# video to gif
ffmpeg -i video.mp4 -t 10 -pix_fmt rgb24 output.gif

# reverse video
ffmpeg -i video.mp4 -vf reverse reversed.mp4

# reverse video+audio
ffmpeg -i video.mp4 -vf reverse -af areverse reversed.mp4


# efeito mirror (vertical)
ffmpeg -i video.mp4 -vf "split [main][tmp]; [tmp] crop=iw:ih# 2:0:0, vflip [flip]; [main][flip] overlay=0:H# 2" -y outeput.mp4

# efeito mirror (horizontal)
ffmpeg -i video.mp4 -vf "crop=iw# 2:ih:0:0,split[left][tmp];[tmp]hflip[right];[left][right] hstack" output.mp4

# video com imagem de fundo (scale define o tamanho do video)
ffmpeg -loop 1 -i image.png -i video.mp4 -filter_complex "[1:v]scale=400:-1[fg];[0:v][fg]overlay=(W-w)# 2:(H-h)# 2:shortest=1" output.mp4

# video decodificado# aac
ffmpeg -i video.mp4 -c:v libx264 -c:a aac output.mp4

# Criando imagem com audio para Youtube
um frame a cada 10 segundos (apenas AVI)
ffmpeg -loop 1 -i img.jpg -i flac.flac -shortest -r 0.1 -ab 320k output.avi

ffmpeg -loop 1 -i img.jpg -to 2:20 -shortest -r 0.1 img.avi

# converter em mp3
ffmpeg -i audio.flac -ar 44100 -ac 2 -b:a 320k output.mp4

# compressor decodificador x264 AAC
ffmpeg -i video.mov -vcodec h264 -acodec aac output.mp4


# timelapse
ffmpeg -i video.mp4 -filter:v "setpts=0.166666667*PTS" -an output.mp4

# Crop and Resize
ffmpeg -y -i input.mp4 -filter_complex "crop=640:360:10:10,scale=320:240,setdar=16# 9" output.mp4

# crie um vídeo com uma imagem e um som
ffmpeg -loop 1 -i img.jpg -i audio.mp3 -shortest -c:v libx264 -c:a copy out.mp4

# adicione uma imagem ao vídeo (overlay é a posição)
ffmpeg -i video.mp4 -i img.png -filter_complex "[1]scale=iw# 2:-1[b];[0:v][b] overlay" testc.mp4

# adicionar áudio ao vídeo
ffmpeg -i video.mp4 -i audio.mp3 -map 0:v -map 1:a -c:v copy -c:a copy -ac 2 -ar 44100 -ab 192k output.mp4 -y

# copiar sem decodificação
ffmpeg -i video.mp4 -vcodec copy -acodec copy 1.mp4

ffmpeg -i v0.mp4 -i a0.mp3 -vcodec copy -acodec copy v.mp4

# mudar codificador# compressor para h265
ffmpeg -i video.mp4 -c:v libx265 -c:a copy output.mp4

# audio extract
ffmpeg -i video.avi -vn -ac 2 -ar 48000 -ab 128k -f mp3 audio.mp3

# concatenar vídeos
ffmpeg -f concat -safe 0 -i list.txt -c:v copy -c:a copy File1+2.mp4

73, 132
# remover audio
ffmpeg -i video.mp4 -c copy -an input.mp4

# Comprimir mp4
ffmpeg -i video.mp4 -vcodec h264 -acodec mp2 output.mp4

2# Comprimir mp4-AAC (128k)
ffmpeg -i video.mp4 -vcodec h264 -acodec aac outpu2t.mp4

# mudar 'aspect ratio' para 16# 9 (tela cheia)
ffmpeg -i video.mp4 -vf scale=ih*16# 9:ih,scale=iw:-2,setsar=1 -crf 20 -c:a copy output.mp4

# cria um vídeo de 5 segundos com uma imagem
ffmpeg -loop 1 -i %d.jpg -t 1 put.mp4

# mostrar frame
ffmpeg -i video.mp4 -qscale:v 2 print\output_%03d.jpg

# mostrar todos os frames
ffmpeg -i video.mp4 frames\out-%03d.jpg

# definindo inicio# fim de video (sem bug)
ffmpeg -i video.mp4 -ss 00:00:03 -to 00:00:08 -async 1 cut.mp4

1# obtendo paleta de cores de imagem
ffmpeg -i img.jpg -vf palettegen palette.png

2# inserindo paleta de cores em vídeo
ffmpeg -i video.mp4 -i palette.png -filter_complex "paletteuse" -c:a copy out.mp4

# filtro para deixar imagem mais nítida
ffmpeg -i img1.jpg -filter "unsharp" out.jpg

# ffmpeg smart blur (melhorar qualidade# nitidez)
ffmpeg -i b2.mp4 smartblur=lr=1.5:ls=-0.25:lt=-3.5:cr=0.75:cs=0.250:ct=0.5 eout.mp4

1# rotacionar video
ffmpeg -i video.mp4 -c copy -metadata:s:v:0 rotate=90 output.mp4
2# redefinir tamanho
ffmpeg -i video.mp4 -s 1280x720 output2.mp4

# numero de frames de um video
ffmpeg -i video.mp4 -map 0:v:0 -c copy -f null -

- filtros -

# filtro que adiciona borda desfocada ao video verfical.(OBS: 
* Use 'aspect ratio' para deixar em tela cheia
* Modifique onde está 1280# 720 para o formato final do vídeo.
ffmpeg -i v0.mp4 -lavfi "[0:v]scale=1280*2:720*2,boxblur=luma_radius=min(h\,w)# 20:luma_power=1:chroma_radius=min(cw\,ch)# 20:chroma_power=1[bg];[0:v]scale=-1:1280[ov];[bg][ov]overlay=(W-w)# 2:(H-h)# 2,crop=w=1280:h=720" otput.mp4

# 'datascope' transformar pixels em characteres com cores
ffmpeg -i video.mp4 -vf "format=yuv444p,datascope=s=640x480:mode=color2" output.mp4

ffmpeg -i video.mp4 -vf "datascope=s=1920x1080:mode=color" output.mp4

# showspectrumpic: given the audio file
ffmpeg -i audio.mp3 -lavfi showspectrumpic=s=hd720 out.jpg

# granulado (noise=alls=frequencia)
ffmpeg -i Albert_Einstein_Nobel.png noise=alls=20:allf=t+u -vf noise_Albert_Einstein_Nobel.png

extrair todos os canais de áudio (separados) de um vídeo
ffmpeg -i out.mkv -map_channel 0.1.0 ch0.wav -map_channel 0.1.1 ch1.wav -map_channel 0.1.2 ch2.wav -map_channel 0.1.3 ch3.wav
- ignore -

ffmpeg -i video.mkv -map_channel 0.1.0 ch0.wav -map_channel 0.1.1 ch1.wav -map_channel 0.1.2 ch2.wav -map_channel 0.1.3 ch3.wav


ffmpeg -i video.mkv -ss 00:14:38.0 -to 00:16:18 -async 1 -c:v libx265 -c:a copy part.mkv