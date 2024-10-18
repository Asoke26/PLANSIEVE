SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount >= 15051.0
AND p.AnswerCount >= 4.0
AND p.AnswerCount <= 28.0
AND p.FavoriteCount >= 55.0
AND p.FavoriteCount <= 190.0
AND v.VoteTypeId = 16
AND u.Reputation >= 563
AND u.Views >= 86
AND b.Date >= 35
AND u.CreationDate >= 96
AND u.CreationDate <= 1295

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;