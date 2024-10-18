SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 1
AND ph.PostHistoryTypeId = 1
AND u.Reputation >= 177
AND u.Reputation <= 1382
AND u.DownVotes <= 41
AND c.CreationDate >= 833
AND ph.CreationDate >= 1527
AND u.CreationDate >= 113
AND u.CreationDate <= 543

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;