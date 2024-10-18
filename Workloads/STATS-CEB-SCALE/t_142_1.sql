SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 35.0
AND p.FavoriteCount >= 31.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 8
AND c.CreationDate >= 1154
AND c.CreationDate <= 1462
AND v.CreationDate <= 1300
AND b.Date <= 763

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;