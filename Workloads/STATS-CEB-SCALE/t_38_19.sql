SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 18
AND ph.PostHistoryTypeId = 12
AND u.Reputation >= 1460
AND u.Reputation <= 1794
AND u.DownVotes <= 17
AND c.CreationDate >= 79
AND ph.CreationDate >= 219
AND u.CreationDate >= 36
AND u.CreationDate <= 705

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;