SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 24
AND p.ViewCount >= 239.0
AND p.CommentCount <= 5
AND v.VoteTypeId = 2
AND c.CreationDate >= 965
AND ph.CreationDate >= 498
AND ph.CreationDate <= 842

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;