#!/bin/bash



# donwload files from drive
# encode.sh input.mp4 output.mp4
# git checkout -b video
# mv output.mp4 folder/output.mp4
# git add ouput.mp4
# git commit output.mp4
# git push output origin branch
# curl create container
# curl publish container
# git checkout main
# git branch -D video
# git push origin --delete video


createContainer() {
	local token="EABcUySFIuloBAJ4j5YQv5vdv1ZCUl2S8JkB5TBHI1jkbsIN7huZCdFONx0zIBKWaw2UUKafxdxi6wtbnAjuXhcxapI4suMJZCR5ha3LhwpGHATOlv5FmtcXxc1weZBEOxlZAyZAYNZADw8XZCtiHUGV7Cg1CEhDzOGT6ZBudF3NSkEU7EhWv3E21y"
	local output="Chuache_002_ig.mp4"
	#"${a} ${b}"
	local base="https://graph.facebook.com/v17.0/17841460053246937/media"
	local image_url="image_url=https://raw.githubusercontent.com/rmjh-2023/elchuache/video/portada_video_ig.jpg"
	local caption="caption=%23ElChuache %23Humor %23Joke"
	local media_type="media_type=REELS"
	local access_token="access_token=${token}"
	local video_url="video_url=https://raw.githubusercontent.com/rmjh-2023/elchuache/video/${output}"
	curl --location --request POST "${base}?${image_url}&${caption}&${media_type}&${access_token}&${video_url}"
}

publishContainer() {
	local token="EABcUySFIuloBAJ4j5YQv5vdv1ZCUl2S8JkB5TBHI1jkbsIN7huZCdFONx0zIBKWaw2UUKafxdxi6wtbnAjuXhcxapI4suMJZCR5ha3LhwpGHATOlv5FmtcXxc1weZBEOxlZAyZAYNZADw8XZCtiHUGV7Cg1CEhDzOGT6ZBudF3NSkEU7EhWv3E21y"
	local base="https://graph.facebook.com/v17.0/17841460053246937/media_publish"
	local creation_id="creation_id=17856624497993551"
	local access_token="access_token=${token}"
	curl --location --request POST "${base}?${creation_id}&${access_token}"
}