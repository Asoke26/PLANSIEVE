SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 7
AND u.Views = 182
AND u.DownVotes >= 15
AND u.UpVotes >= 116
AND u.UpVotes <= 456
AND u.CreationDate <= 1284
AND b.Date >= 30
AND b.Date <= 1400

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;