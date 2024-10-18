SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 34
AND p.ViewCount >= 213.0
AND p.CommentCount <= 33
AND v.VoteTypeId = 16
AND c.CreationDate >= 1029
AND ph.CreationDate >= 442
AND ph.CreationDate <= 1225

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;