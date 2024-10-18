SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 26
AND p.ViewCount >= 24270.0
AND u.Reputation <= 11860
AND u.UpVotes >= 328

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;