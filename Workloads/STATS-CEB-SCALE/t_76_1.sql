SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount >= 517.0
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 56.0
AND p.FavoriteCount >= 6.0
AND p.FavoriteCount <= 60.0
AND v.VoteTypeId = 2
AND u.Reputation >= 325
AND u.Views >= 124
AND b.Date >= 1081
AND u.CreationDate >= 403
AND u.CreationDate <= 686

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;