SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND p.ViewCount >= 135.0
AND u.Reputation <= 388
AND u.UpVotes >= 869

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;