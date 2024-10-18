SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 16
AND u.Views >= 428
AND u.DownVotes >= 48
AND u.UpVotes >= 128
AND u.UpVotes <= 613
AND ph.CreationDate <= 516
AND b.Date <= 1356
AND u.CreationDate >= 116
AND u.CreationDate <= 708

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;