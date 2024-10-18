SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.ViewCount >= 3043.0
AND p.AnswerCount >= 1.0
AND p.AnswerCount <= 13.0
AND p.FavoriteCount >= 13.0
AND p.FavoriteCount <= 74.0
AND v.VoteTypeId = 5
AND u.Reputation >= 1351
AND u.Views >= 29
AND b.Date >= 722
AND u.CreationDate >= 59
AND u.CreationDate <= 949

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;