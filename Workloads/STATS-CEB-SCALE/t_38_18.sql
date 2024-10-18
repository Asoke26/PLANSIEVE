SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 1
AND u.Reputation >= 125
AND u.Reputation <= 335
AND u.DownVotes <= 6
AND c.CreationDate >= 772
AND ph.CreationDate >= 1008
AND u.CreationDate >= 678
AND u.CreationDate <= 1243

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;