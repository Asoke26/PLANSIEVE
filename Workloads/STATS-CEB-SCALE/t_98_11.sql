SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND p.ViewCount >= 386.0
AND u.Reputation <= 3008
AND u.UpVotes >= 30

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;