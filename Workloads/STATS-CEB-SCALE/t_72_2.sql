SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 83
AND p.ViewCount >= 960.0
AND p.CommentCount <= 20
AND v.VoteTypeId = 5
AND c.CreationDate >= 696
AND ph.CreationDate >= 443
AND ph.CreationDate <= 1054

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;