SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 10
AND p.ViewCount >= 8276.0
AND p.CommentCount <= 17
AND v.VoteTypeId = 16
AND c.CreationDate >= 458
AND ph.CreationDate >= 153
AND ph.CreationDate <= 1447

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;