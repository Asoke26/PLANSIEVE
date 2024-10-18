SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 4
AND p.ViewCount >= 10.0
AND u.Reputation <= 321
AND u.UpVotes >= 66

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;