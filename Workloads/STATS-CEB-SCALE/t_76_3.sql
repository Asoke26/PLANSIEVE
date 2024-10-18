SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount >= 118.0
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 19.0
AND p.FavoriteCount >= 16.0
AND p.FavoriteCount <= 65.0
AND v.VoteTypeId = 16
AND u.Reputation >= 478
AND u.Views >= 100
AND b.Date >= 317
AND u.CreationDate >= 104
AND u.CreationDate <= 378

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;