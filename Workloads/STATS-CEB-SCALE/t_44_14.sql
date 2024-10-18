SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Views = 500
AND u.DownVotes >= 30
AND u.UpVotes >= 186
AND u.UpVotes <= 270
AND u.CreationDate <= 1016
AND b.Date >= 551
AND b.Date <= 1232

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;