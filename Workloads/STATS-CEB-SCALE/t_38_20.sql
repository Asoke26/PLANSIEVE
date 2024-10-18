SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 2
AND ph.PostHistoryTypeId = 13
AND u.Reputation >= 107
AND u.Reputation <= 963
AND u.DownVotes <= 39
AND c.CreationDate >= 353
AND ph.CreationDate >= 140
AND u.CreationDate >= 749
AND u.CreationDate <= 1055

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;