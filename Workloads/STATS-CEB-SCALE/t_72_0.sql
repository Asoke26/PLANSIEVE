SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 35
AND p.ViewCount >= 11197.0
AND p.CommentCount <= 35
AND v.VoteTypeId = 15
AND c.CreationDate >= 1457
AND ph.CreationDate >= 383
AND ph.CreationDate <= 1122

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;