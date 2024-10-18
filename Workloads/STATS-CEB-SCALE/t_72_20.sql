SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 102
AND p.ViewCount >= 2211.0
AND p.CommentCount <= 15
AND v.VoteTypeId = 8
AND c.CreationDate >= 465
AND ph.CreationDate >= 568
AND ph.CreationDate <= 870

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;