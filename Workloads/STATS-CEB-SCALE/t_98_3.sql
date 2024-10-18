SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 18
AND p.ViewCount >= 1769.0
AND u.Reputation <= 18283
AND u.UpVotes >= 428

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;