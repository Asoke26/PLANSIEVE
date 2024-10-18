SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.Score <= 41
AND p.AnswerCount <= 18.0
AND p.FavoriteCount >= 15.0
AND u.Reputation <= 379
AND v.CreationDate >= 59
AND b.Date <= 794

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;