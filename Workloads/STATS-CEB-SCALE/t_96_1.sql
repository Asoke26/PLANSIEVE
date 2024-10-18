SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score >= 7
AND p.Score <= 113
AND p.ViewCount >= 1310.0
AND p.ViewCount <= 2646.0
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 25.0
AND p.FavoriteCount >= 4.0
AND p.FavoriteCount <= 35.0
AND u.Views >= 309
AND c.CreationDate >= 1011
AND p.CreationDate >= 960
AND p.CreationDate <= 1119
AND u.CreationDate >= 830

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;