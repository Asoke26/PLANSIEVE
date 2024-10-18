SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE p.Score>=0
AND p.Score<=28
AND p.ViewCount>=0
AND p.ViewCount<=6517
AND p.AnswerCount>=0
AND p.AnswerCount<=5
AND p.FavoriteCount>=0
AND p.FavoriteCount<=8
AND u.Views>=0
AND c.CreationDate>=35
AND p.CreationDate>=35
AND p.CreationDate<=1544
AND u.CreationDate>=35

AND u.Id = p.OwnerUserId
AND u.Id = c.UserId
AND u.Id = v.UserId;