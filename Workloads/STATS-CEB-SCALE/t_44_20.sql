SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND u.Views = 434
AND u.DownVotes >= 8
AND u.UpVotes >= 170
AND u.UpVotes <= 2122
AND u.CreationDate <= 736
AND b.Date >= 121
AND b.Date <= 1217

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;