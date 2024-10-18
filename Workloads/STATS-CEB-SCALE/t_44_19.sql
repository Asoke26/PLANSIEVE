SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 5
AND u.Views = 147
AND u.DownVotes >= 0
AND u.UpVotes >= 32
AND u.UpVotes <= 1781
AND u.CreationDate <= 1419
AND b.Date >= 306
AND b.Date <= 998

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;