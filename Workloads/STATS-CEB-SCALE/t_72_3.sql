SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 66
AND p.ViewCount >= 718.0
AND p.CommentCount <= 29
AND v.VoteTypeId = 5
AND c.CreationDate >= 769
AND ph.CreationDate >= 941
AND ph.CreationDate <= 1537

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;