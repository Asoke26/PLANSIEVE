SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= -7
AND p.ViewCount >= 7350.0
AND p.CommentCount <= 13
AND v.VoteTypeId = 2
AND c.CreationDate >= 1038
AND ph.CreationDate >= 651
AND ph.CreationDate <= 1206

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;