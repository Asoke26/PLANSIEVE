SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 25.0
AND p.FavoriteCount >= 5.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 2
AND c.CreationDate >= 109
AND c.CreationDate <= 293
AND v.CreationDate <= 1206
AND b.Date <= 110

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;