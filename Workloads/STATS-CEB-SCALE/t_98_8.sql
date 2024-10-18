SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 23
AND p.ViewCount >= 1397.0
AND u.Reputation <= 1899
AND u.UpVotes >= 139

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;