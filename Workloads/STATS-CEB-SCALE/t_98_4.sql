SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 1
AND p.ViewCount >= 1255.0
AND u.Reputation <= 908
AND u.UpVotes >= 60

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;