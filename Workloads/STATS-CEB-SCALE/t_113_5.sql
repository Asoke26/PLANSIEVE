SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE ph.PostHistoryTypeId = 16
AND u.Views >= 321
AND u.DownVotes >= 24
AND u.UpVotes >= 71
AND u.UpVotes <= 246
AND ph.CreationDate <= 676
AND b.Date <= 246
AND u.CreationDate >= 32
AND u.CreationDate <= 680

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;