SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND u.Views = 5529
AND u.DownVotes >= 22
AND u.UpVotes >= 230
AND u.UpVotes <= 10523
AND u.CreationDate <= 1148
AND b.Date >= 64
AND b.Date <= 815

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;