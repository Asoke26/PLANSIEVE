SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND u.Views = 261
AND u.DownVotes >= 41
AND u.UpVotes >= 9
AND u.UpVotes <= 3079
AND u.CreationDate <= 1216
AND b.Date >= 1136
AND b.Date <= 1372

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;