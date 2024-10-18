SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount >= 712.0
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 9.0
AND p.FavoriteCount >= 1.0
AND p.FavoriteCount <= 135.0
AND v.VoteTypeId = 8
AND u.Reputation >= 321
AND u.Views >= 202
AND b.Date >= 1125
AND u.CreationDate >= 581
AND u.CreationDate <= 1524

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;