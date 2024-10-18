SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score=0
AND p.ViewCount>=0
AND u.Reputation<=306
AND u.UpVotes>=0

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;