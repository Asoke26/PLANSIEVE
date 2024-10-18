SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 9
AND p.ViewCount >= 1816.0
AND u.Reputation <= 8635
AND u.UpVotes >= 40

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;