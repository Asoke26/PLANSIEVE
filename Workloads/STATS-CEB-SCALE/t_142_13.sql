SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 12.0
AND p.FavoriteCount >= 6.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 16
AND c.CreationDate >= 212
AND c.CreationDate <= 600
AND v.CreationDate <= 1335
AND b.Date <= 1176

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;