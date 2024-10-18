SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND u.Views = 108
AND u.DownVotes >= 9
AND u.UpVotes >= 403
AND u.UpVotes <= 475
AND u.CreationDate <= 1327
AND b.Date >= 256
AND b.Date <= 1463

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;