SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND u.Views = 284
AND u.DownVotes >= 49
AND u.UpVotes >= 10
AND u.UpVotes <= 518
AND u.CreationDate <= 1008
AND b.Date >= 439
AND b.Date <= 1346

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;