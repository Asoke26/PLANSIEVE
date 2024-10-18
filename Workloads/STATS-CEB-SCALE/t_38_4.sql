SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 1
AND ph.PostHistoryTypeId = 34
AND u.Reputation >= 54
AND u.Reputation <= 331
AND u.DownVotes <= 214
AND c.CreationDate >= 293
AND ph.CreationDate >= 750
AND u.CreationDate >= 691
AND u.CreationDate <= 1309

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;