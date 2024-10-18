SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount >= 643.0
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 9.0
AND p.FavoriteCount >= 54.0
AND p.FavoriteCount <= 88.0
AND v.VoteTypeId = 5
AND u.Reputation >= 1726
AND u.Views >= 165
AND b.Date >= 1144
AND u.CreationDate >= 46
AND u.CreationDate <= 268

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;