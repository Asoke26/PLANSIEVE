SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 5
AND u.Views = 97
AND u.DownVotes >= 19
AND u.UpVotes >= 42
AND u.UpVotes <= 329
AND u.CreationDate <= 1199
AND b.Date >= 215
AND b.Date <= 1349

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;