SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 11
AND ph.PostHistoryTypeId = 2
AND u.Reputation >= 429
AND u.Reputation <= 1668
AND u.DownVotes <= 5
AND c.CreationDate >= 420
AND ph.CreationDate >= 158
AND u.CreationDate >= 159
AND u.CreationDate <= 493

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;