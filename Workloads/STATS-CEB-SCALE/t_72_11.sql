SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 21
AND p.ViewCount >= 1216.0
AND p.CommentCount <= 1
AND v.VoteTypeId = 2
AND c.CreationDate >= 557
AND ph.CreationDate >= 827
AND ph.CreationDate <= 1483

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;