SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount <= 42.0
AND p.FavoriteCount >= 3.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 11
AND c.CreationDate >= 397
AND c.CreationDate <= 855
AND v.CreationDate <= 278
AND b.Date <= 786

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;