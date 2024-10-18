SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Views = 298
AND u.DownVotes >= 23
AND u.UpVotes >= 270
AND u.UpVotes <= 1264
AND u.CreationDate <= 1455
AND b.Date >= 803
AND b.Date <= 1336

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;