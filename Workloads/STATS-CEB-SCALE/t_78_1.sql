SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.Score <= 45
AND p.AnswerCount <= 23.0
AND p.FavoriteCount >= 29.0
AND u.Reputation <= 497
AND v.CreationDate >= 713
AND b.Date <= 761

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;