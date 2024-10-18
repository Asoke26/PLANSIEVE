SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 4
AND ph.PostHistoryTypeId = 12
AND u.Reputation >= 331
AND u.Reputation <= 9604
AND u.DownVotes <= 1920
AND c.CreationDate >= 87
AND ph.CreationDate >= 112
AND u.CreationDate >= 314
AND u.CreationDate <= 1206

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;