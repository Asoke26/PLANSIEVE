SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 12
AND u.Views >= 42
AND u.DownVotes >= 9
AND u.UpVotes >= 10
AND u.UpVotes <= 1316
AND ph.CreationDate <= 1413
AND b.Date <= 518
AND u.CreationDate >= 51
AND u.CreationDate <= 267

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;