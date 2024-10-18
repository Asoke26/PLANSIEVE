SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 5
AND u.Views = 257
AND u.DownVotes >= 5
AND u.UpVotes >= 11
AND u.UpVotes <= 177
AND u.CreationDate <= 474
AND b.Date >= 935
AND b.Date <= 1519

AND u.Id = ph.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;