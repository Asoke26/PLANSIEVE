SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 15
AND p.Score <= 96
AND p.AnswerCount <= 35.0
AND p.FavoriteCount >= 13.0
AND u.Reputation <= 2282
AND v.CreationDate >= 425
AND b.Date <= 490

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;