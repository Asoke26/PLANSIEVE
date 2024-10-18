SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 1
AND p.ViewCount >= 15260.0
AND u.Reputation <= 913
AND u.UpVotes >= 352

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;