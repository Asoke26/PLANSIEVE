SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 9.0
AND p.FavoriteCount >= 32.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 5
AND c.CreationDate >= 1128
AND c.CreationDate <= 1222
AND v.CreationDate <= 1437
AND b.Date <= 957

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;