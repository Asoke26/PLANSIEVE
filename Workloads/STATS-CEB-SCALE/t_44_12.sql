SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND u.Views = 500
AND u.DownVotes >= 12
AND u.UpVotes >= 92
AND u.UpVotes <= 394
AND u.CreationDate <= 621
AND b.Date >= 518
AND b.Date <= 947

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;