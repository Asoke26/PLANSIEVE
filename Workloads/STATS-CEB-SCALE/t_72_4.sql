SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 110
AND p.ViewCount >= 4440.0
AND p.CommentCount <= 24
AND v.VoteTypeId = 9
AND c.CreationDate >= 1055
AND ph.CreationDate >= 39
AND ph.CreationDate <= 702

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;