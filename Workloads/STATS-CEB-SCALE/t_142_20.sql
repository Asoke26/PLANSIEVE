SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 18.0
AND p.FavoriteCount >= 56.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND c.CreationDate >= 326
AND c.CreationDate <= 1172
AND v.CreationDate <= 592
AND b.Date <= 483

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;