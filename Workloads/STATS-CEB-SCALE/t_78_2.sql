SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 0
AND p.Score <= 57
AND p.AnswerCount <= 11.0
AND p.FavoriteCount >= 15.0
AND u.Reputation <= 1058
AND v.CreationDate >= 308
AND b.Date <= 811

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;