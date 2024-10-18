SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Views = 500
AND u.DownVotes >= 18
AND u.UpVotes >= 57
AND u.UpVotes <= 1547
AND u.CreationDate <= 1282
AND b.Date >= 35
AND b.Date <= 226

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;