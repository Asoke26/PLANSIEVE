SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 113
AND p.ViewCount >= 4284.0
AND p.CommentCount <= 4
AND v.VoteTypeId = 2
AND c.CreationDate >= 641
AND ph.CreationDate >= 787
AND ph.CreationDate <= 1333

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;