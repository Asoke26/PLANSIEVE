SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 3
AND ph.PostHistoryTypeId = 33
AND u.Reputation >= 55
AND u.Reputation <= 9800
AND u.DownVotes <= 91
AND c.CreationDate >= 28
AND ph.CreationDate >= 248
AND u.CreationDate >= 128
AND u.CreationDate <= 638

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;