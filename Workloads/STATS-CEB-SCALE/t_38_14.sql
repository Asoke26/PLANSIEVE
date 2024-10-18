SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 3
AND u.Reputation >= 563
AND u.Reputation <= 1512
AND u.DownVotes <= 212
AND c.CreationDate >= 488
AND ph.CreationDate >= 464
AND u.CreationDate >= 209
AND u.CreationDate <= 268

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;